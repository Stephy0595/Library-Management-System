CREATE DATABASE Library;
USE Library;

CREATE TABLE Branch (
Branch_no INT PRIMARY KEY, 
Manager_Id INT, 
Branch_address VARCHAR(250),
    Contact_no VARCHAR(12));
    
     INSERT INTO Branch (Branch_no, 
     Manager_Id, 
     Branch_address, 
     Contact_no) VALUES
    (1, 121, 'Near Kerala University, Trivandrum', '0471-2492266'),
    (2, 122, 'Near IIT Delhi, Delhi', '0471-2484470'),
    (3, 123, 'Near Coffee House, West Bengal', '0471-3521413'),
    (4, 124, 'Near Christ University, Bangalore', '0471-2473125'),
    (5, 125, 'Near Infopark, Cochi', '0471-2498513'),
    (6, 126, 'Near Taj Hotel,Mumbai', '0471-6572311'),
    (7, 127, 'Near Victoria Memorial, West Bengal', '0471-2586123'),
    (8, 128, 'Near Loyola College, Chennai', '0471-2492584');
    
     SELECT * FROM Branch;
     
      CREATE TABLE Employee (
      Emp_Id INT PRIMARY KEY, 
      Emp_name VARCHAR(150), 
      Position VARCHAR(70),
    Salary DECIMAL(10, 2), 
    Branch_no INT, 
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no));
    
    
    INSERT INTO Employee (
    Emp_Id, 
    Emp_name, 
    Position, 
    Salary, 
    Branch_no) 
VALUES
    (80, 'Aravind Kumar', 'Librarian', 30000.00, 1),
    (81, 'Sitharam Desai', 'Librarian', 32000.00,3 ),
    (82, 'Sasikant', 'Manager', 40000.00, 5),
    (83, 'Krishna Iyer', 'Manager', 42000.00, 8),
    (85, 'Kunal Singh', 'Manager', 42000.00, 2),
    (88, 'Puja Saha', 'Manager', 43000.00, 3),
    (89, 'Nakul Sharma', 'Librarian', 29000.00, 6),
    (91, 'Saraswathy Iyer', 'Manager', 52000.00, 4),
    (93, 'Mohammed Faizal', 'Librarian', 33000.00, 2),
    (94, 'Poonam Sharma', 'Librarian', 28000.00,7);
    
    SELECT * FROM Employee;
    
    
    CREATE TABLE Books ( 
    ISBN VARCHAR(20) PRIMARY KEY, 
    Book_title VARCHAR(250), 
    Category VARCHAR(85),
    Rental_Price DECIMAL(10, 2), 
    Status VARCHAR(3), 
    Author VARCHAR(90), 
    Publisher VARCHAR(110));
    
    INSERT INTO Books (
    ISBN, 
    Book_title, 
    Category, 
    Rental_Price, 
    Status, 
    Author, 
    Publisher) VALUES
    ('9788129141798', 'World Outside my Window', 'Fiction', 20.00, 'Yes', 'Ruskin Bond', 'New Delhi,Rupa'),
    ('9788129142146', 'One Indian Girl', 'Indian English Fiction', 25.00,'No', 'Chetan Bhagat', 'Rupa Publishers Ltd'),
    ('9789386228734', 'The ivory thrones', 'History', 80.00, 'Yes', 'Manu S Pillai', 'Juggernaut Books'),
    ('9789386208130','The Diary Of a Young girl', 'Biography', 40.00, 'Yes', 'Anne Frank', 'Puffin Books'),
    ('0563532599', 'Harry Potter', 'Novel', 10.00, 'No', 'J.K.Rowling', 'Bloomsbury'),
    ('0521426219', 'Macbeth', 'Drama', 9.00, 'Yes', 'William Shakesphere', 'Cambridge University Press'),
    ('8125029001', 'Love is a god from hell', 'Poetry',21.00, 'No', 'Charles Bukowski', 'Orient Longman'),
    ('8223309703', 'Romeo and Juliet', 'Novel',17.00, 'Yes', 'William Shakesphere', 'Northern House'),
    ('9781847941831', 'Atomic Habits', 'Non fiction',12.00, 'No', 'James Clear', 'Penguin Random House'),
    ('9783386338737', 'Selected Poems of William Wordsworth','Poetry',7.00, 'Yes', 'William Wordsworth', 'Oxford University Press');
    
    SELECT * FROM Books;
    
    CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY, 
    Customer_name VARCHAR(150), 
    Customer_address VARCHAR(250),
    Reg_date DATE);
    
    INSERT INTO Customer (
    Customer_Id, 
    Customer_name, 
    Customer_address, 
    Reg_date) VALUES
  (1, 'Pritam Sharma', '126 Sector,Guragon, Haryana', '2022-05-20'),
  (2, 'Rakhul Kapoor', 'Near Mahalaxmi Stores,New Delhi', '2021-03-18'),
  (3, 'Ajmal Khan', 'Opposite Jumamasjit, Karan Road, West Bengal', '2024-04-09'),
  (4, 'Arjun Kumar', 'Flat No 51, Bhangra Street, Kolkata', '2020-08-21'),
  (5, 'Adithya Menon', 'House No 20, Swathi Lane,Trivandrum', '2023-02-11'),
  (6, 'Swathi Iyer', 'House No 111, Ayyappan Kovil Street,Chennai', '2024-03-25'),
  (7, 'Deepak Pandey', 'Flat No 15, Highness Building, Mumbai', '2020-12-04'),
  (8, 'Kiran Jain', 'House No 128, Jawaharlal Nehru Road, Bangalore', '2023-11-19'),
  (9, 'Sahil Singh', 'Flat No 52, Supreme Buildings, Mumbai', '2022-01-16'),
  (10, 'Neeraj Kumar', 'SRA-30, Saraswathi Nagar, Cochin', '2021-10-24');
  

 SELECT * FROM Customer;
 
 CREATE TABLE IssueStatus (
 Issue_Id INT PRIMARY KEY, 
 Issued_cust INT, 
 Issued_book_name VARCHAR(255),
    Issue_date DATE, 
    Isbn_book VARCHAR(20), 
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN));
    
    INSERT INTO IssueStatus (
    Issue_Id, 
    Issued_cust, 
    Issued_book_name, 
    Issue_date, 
    Isbn_book) VALUES
  (31, 1, 'World Outside my Window', '2024-05-25', '9788129141798'),
  (32, 2, 'One Indian Girl', '2023-06-18', '9788129142146'),
  (33, 3, 'The ivory thrones', '2024-06-15', '9789386228734'),
  (34, 4, 'The Diary Of a Young girl', '2023-06-08', '9789386208130'),
  (35, 5, 'Harry Potter', '2023-03-01', '0563532599'),
  (36, 6, 'Macbeth', '2024-04-01', '0521426219'),
  (37, 7, 'Romeo and Juliet', '2020-01-01', '8223309703'),
  (38, 8, 'Atomic Habits', '2023-12-01', '9781847941831'),
  (39, 9, 'Selected Poems of William Wordsworth', '2020-02-01', '9783386338737'),
  (40, 10, 'Love is a god from hell', '2023-11-01', '8125029001');
  
  
  SELECT * FROM IssueStatus;
  
  CREATE TABLE ReturnStatus (
  Return_Id INT PRIMARY KEY, 
  Return_cust INT, 
  Return_book_name VARCHAR(250),
    Return_date DATE, 
    Isbn_book2 VARCHAR(20), 
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN));
    
    INSERT INTO ReturnStatus (
    Return_Id, 
    Return_cust, 
    Return_book_name, 
    Return_date, 
    Isbn_book2) VALUES
    (71, 7, 'Romeo and Juliet', '2020-03-17', '8223309703'),
    (72, 2, 'Macbeth', '2024-05-30', '9788129142146'),
    (73, 3, 'The Ivory Thrones', '2023-07-11', '9789386228734'),
    (74, 4, 'The Diary Of a Young Girl', '2023-11-13', '9789386208130'),
    (75, 9, 'Selected Poems of William Wordsworth', '2021-04-12', '9783386338737'),
    (76, 6, 'Macbeth', '2024-06-03', '0521426219'),
    (77, 8, 'Atomic Habits', '2024-02-05', '9781847941831'),
    (78, 1, 'World Outside my Window', '2024-08-24', '9788129141798'),
    (79, 5, 'Harry Potter', '2023-06-14', '0563532599'),
    (80, 10,'Love is a god from hell', '2024-01-17','8125029001');
    
    SELECT * FROM ReturnStatus;
    
    -- Question No 1
    
    SELECT Book_title, Category, Rental_Price FROM Books WHERE Status = 'Yes';
    
    -- Question No 2
    
    SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC; 
    
      -- Question No 3
      
   SELECT B.Book_title, C.Customer_name FROM Books B JOIN IssueStatus I ON B.ISBN = I.Isbn_book
JOIN Customer C ON I.Issued_cust = C.Customer_Id;

-- Question No 4

SELECT Category, COUNT(*) AS Total_Books FROM Books GROUP BY Category;

-- Question No 5

SELECT Emp_name, Position FROM Employee 
WHERE Salary > 50000;

-- Question No 6

SELECT Customer_name 
FROM Customer 
WHERE Reg_date < '2022-01-01' 
AND Customer_Id NOT IN (SELECT Issued_cust FROM IssueStatus);

   -- Question No 7
   
SELECT Branch_no, COUNT(*) AS Total_Employees FROM Employee 
GROUP BY Branch_no;

-- Question No 8

SELECT C.Customer_name 
FROM Customer C
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust 
WHERE I.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';

-- Question No 9

SELECT Book_title
FROM Books
WHERE Category LIKE '%History%';

-- Question No 10

SELECT e.Branch_no, COUNT(e.Emp_Id) AS Employee_Count
FROM Employee e
GROUP BY e.Branch_no
HAVING COUNT(e.Emp_Id) > 5;

-- Question No 11

SELECT e.Emp_name, b.Branch_address
FROM Employee e
JOIN Branch b ON e.Branch_no = b.Branch_no
WHERE e.Position = 'Manager';

-- Question No 12

SELECT C.Customer_name FROM Customer C
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust
JOIN Books B ON I.Isbn_book = B.ISBN
WHERE B.Rental_Price > 25;


 