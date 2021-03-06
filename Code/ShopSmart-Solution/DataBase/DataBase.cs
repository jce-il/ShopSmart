﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Log;

namespace ShopSmart.Dal
{
    /// <summary>
    /// Hanles access to Data base and data manipulation
    /// </summary>
    public class DataBase:IDisposable
    {
        
        /// <summary>
        /// The data base that we are working against
        /// </summary>
        ShopSmartEntities _db;

        /// <summary>
        /// Initializes a new instance of the <see cref="BusinessLogics"/> class.
        /// </summary>
        public DataBase()
        {
            //Initializing the DAL
            this._db = new ShopSmartEntities();
            //we will have to detect and save changes manually
            this._db.Configuration.AutoDetectChangesEnabled = false;
            this._db.Configuration.LazyLoadingEnabled = true;
            this._db.Configuration.ProxyCreationEnabled= true;
            this._db.Configuration.ValidateOnSaveEnabled= true;
        }

        public void Dispose()
        {
            try
            {
                this._db.Dispose();
            }
            catch (Exception ex)
            {
                ex.ToString();
                //nothing to do here
                //TODO: Add log
            }
        }

        /// <summary>
        /// Gets all products.
        /// </summary>
        /// <returns>DbSet of products</returns>
        public virtual IEnumerable<Product> GetAllProducts()
        {
            return this._db.Products;
        }


        /// <summary>
        /// Gets all categories.
        /// </summary>
        /// <returns>DbSet of products</returns>
        public virtual IEnumerable<Category> GetAllCategories()
        {
            return this._db.Categories;
        }


        /// <summary>
        /// Gets all categories.
        /// </summary>
        /// <returns>DbSet of products</returns>
        public virtual IEnumerable<Supermarket> GetAllSuperMarkets()
        {
            return this._db.Supermarkets;
        }


        /// <summary>
        /// Gets the customers filtered by user name and password.
        /// If you do not want to filter by those items use null or <see cref="String.Empty"/>
        /// </summary>
        /// <param name="userName">the username (null or <see cref="String.Empty"/> for not filtering by username).</param>
        /// <param name="password">The password (null or <see cref="String.Empty"/> for not filtering by password).</param>
        /// <param name="userType">Type of the user (null for not filtering by user type).</param>
        /// <returns>
        /// The <see cref="ShopSmart.Dal.User[]"/> object that represents the users
        /// That qualify filter.
        /// </returns>
        public List<Customer> GetCustomers(string userName, string password, UserTypes? userType)
        {
            List<Customer> users = this._db.Customers.ToList();
            /* Filter by username */
            if (!String.IsNullOrWhiteSpace(userName))
            {
                users = users.Where(customer => customer.UserName == userName).ToList();
            }
            /* Filter by password */
            if (!String.IsNullOrWhiteSpace(password))
            {
                users = users.Where(customer => customer.Password == password).ToList();
            }
            /* Filter by usertype */
            if (userType.HasValue)
            {
                users = users.Where(customer => customer.UserType == userType).ToList();
            }

            return users;
        }


        /// <summary>
        /// Creates a new customer.
        /// </summary>
        /// <param name="userName">userName.</param>
        /// <param name="password">The password.</param>
        /// <param name="userType">Type of the user.</param>
        /// <param name="customerId">The customer id.</param>
        /// <param name="errorMessage">The out errorMessage in case of an error.</param>
        /// <returns>
        /// the user if created; null if failed to create
        /// </returns>
        public Customer CreateCustomer(string userName, string password, UserTypes userType, string customerId, out string errorMessage)
        {
            errorMessage = String.Empty ;

            Customer customer = new Customer();
            customer.UserName = userName;
            customer.UserType = userType;
            customer.Password = password;
            customer.CustomerId = customerId;

            
            try
            {
                this._db.Customers.Add(customer);
                this._db.SaveChanges();

            }
            catch (SystemException ex)
            {

                customer = null;
                //if we can get more specific details, do it...
                if (ex is DbEntityValidationException)
                {

                    List<DbEntityValidationResult> validationErrors = this._db.GetValidationErrors().ToList();
                    foreach (DbEntityValidationResult currResult in validationErrors)
                    {
                        //get the error message
                        List<DbValidationError> errors= currResult.ValidationErrors.ToList();
                        List<String> errorString = errors.Select(error => error.ErrorMessage).ToList();
                        errorMessage += String.Join(Environment.NewLine, errorString);
                    }

                    //errorMessage = String.Join(Environment.NewLine,this._db.GetValidationErrors().ToList());
                }
                else
                {
                    errorMessage = ex.Message;
                }

                Logger.Log(String.Format("Failed to create user:{0}"
                                        +"{1}",
                                        Environment.NewLine,
                                        errorMessage));
            }

            return customer;
        }
    }
}
