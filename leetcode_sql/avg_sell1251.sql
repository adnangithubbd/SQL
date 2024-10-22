 
SELECT p.product_id,ifnull(round(sum(p.price*u.units)/sum(u.units),2),0) as average_price 
 FROM prices p LEFT JOIN unitssold u ON p.product_id=u.product_id
 and u.purchase_date BETWEEN p.start_date and p.end_date
 GROUP BY 
 p.product_id;



CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price DECIMAL(10, 2),
    PRIMARY KEY (product_id, start_date)
);

INSERT INTO Prices (product_id, start_date, end_date, price) VALUES
(1, '2019-02-17', '2019-02-28', 5),
(1, '2019-03-01', '2019-03-22', 20),
(2, '2019-02-01', '2019-02-20', 15),
(2, '2019-02-21', '2019-03-31', 30);


CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT,
    PRIMARY KEY (product_id, purchase_date)
);

INSERT INTO UnitsSold (product_id, purchase_date, units) VALUES
(1, '2019-02-25', 100),
(1, '2019-03-01', 15),
(2, '2019-02-10', 200),
(2, '2019-03-22', 30);
