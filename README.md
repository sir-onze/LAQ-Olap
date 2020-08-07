<h1>Laq-Olap</h1>
<h2>Linear algebra querying - Online Analytical Processing</h2>

<h3> Contributors : </h3>

<p>Lucas Pereira - https://github.com/lrpereira</p>
<p>Tiago Baptista - https://github.com/sir-onze</p>

<h3> Context </h3>
<p> This work was developed under a course project in University of Minho over the supervision of Professor José Nuno Oliveira and Professor Alberto José Proença. His main goal is to develop previous work done by another student on a linear algebra approach to querying, mainly increase performance and create a visual interface. </p>

<h4> Paper Abstract </h4>
This report addresses performance and interface improvements to an online analytical processing (OLAP) approach based on linear algebra (LA), as an alternative to the conventional relational algebra (RA).
The initial OLAP approach was evaluated with the TPC-H benchmark and it proved faster than conventional database systems, but it did not manage to overcome the performance of the columnar MonetDB system. The current work identified the key features of MonetDB to improve the LA approach.
The LA system interface accepts SQL queries, which are individually converted into type diagrams (TD) and a domain specification language (DSL) of the processing steps. The current work went further and designed and built a graphic user interface (GUI) that interactively creates and edits diagram schemes to replace SQL queries.
