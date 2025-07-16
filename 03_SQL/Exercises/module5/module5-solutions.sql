USE pubs;

-- 1. Inner join authors with titleauthor based on au_id. (MySQL default JOIN is inner. Explicit use of INNER JOIN also valid.)
SELECT * FROM authors JOIN titleauthor ON authors.au_id = titleauthor.au_id;

-- 2. Inner join titles with publishers and show only titles, price, and publisher name. 
SELECT titles.title, titles.price, publishers.pub_name FROM titles JOIN publishers ON titles.pub_id = publishers.pub_id;

-- 3. Inner join titles with publishers, and show the average price of books for each publisher.
SELECT publishers.pub_name, AVG(titles.price) FROM titles JOIN publishers ON titles.pub_id = publishers.pub_id GROUP BY publishers.pub_id;

-- 4. Inner join authors with titles and show only authors' names and titles' names. Hint: use your query solution from question 1 to get started.
SELECT authors.au_fname, authors.au_lname, titles.title FROM authors JOIN titleauthor ON authors.au_id = titleauthor.au_id JOIN titles ON titleauthor.title_id = titles.title_id;

-- 5. Retrieve the title_id of any titles with multiple authors.
SELECT COUNT(authors.au_id) AS num_authors, titleauthor.title_id FROM authors JOIN titleauthor ON authors.au_id = titleauthor.au_id GROUP BY titleauthor.title_id;

-- 6. Edit the previous query to find the name of the title that has multiple authors. 
SELECT COUNT(authors.au_id) AS num_authors, titles.title FROM authors JOIN titleauthor ON authors.au_id = titleauthor.au_id  JOIN titles ON titleauthor.title_id = titles.title_id GROUP BY titleauthor.title_id HAVING num_authors >1;
