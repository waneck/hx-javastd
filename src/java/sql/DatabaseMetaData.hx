package java.sql;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* Comprehensive information about the database as a whole.
* <P>
* This interface is implemented by driver vendors to let users know the capabilities
* of a Database Management System (DBMS) in combination with
* the driver based on JDBC<sup><font size=-2>TM</font></sup> technology
* ("JDBC driver") that is used with it.  Different relational DBMSs often support
* different features, implement features in different ways, and use different
* data types.  In addition, a driver may implement a feature on top of what the
* DBMS offers.  Information returned by methods in this interface applies
* to the capabilities of a particular driver and a particular DBMS working
* together. Note that as used in this documentation, the term "database" is
* used generically to refer to both the driver and DBMS.
* <P>
* A user for this interface is commonly a tool that needs to discover how to
* deal with the underlying DBMS.  This is especially true for applications
* that are intended to be used with more than one DBMS. For example, a tool might use the method
* <code>getTypeInfo</code> to find out what data types can be used in a
* <code>CREATE TABLE</code> statement.  Or a user might call the method
* <code>supportsCorrelatedSubqueries</code> to see if it is possible to use
* a correlated subquery or <code>supportsBatchUpdates</code> to see if it is
* possible to use batch updates.
* <P>
* Some <code>DatabaseMetaData</code> methods return lists of information
* in the form of <code>ResultSet</code> objects.
* Regular <code>ResultSet</code> methods, such as
* <code>getString</code> and <code>getInt</code>, can be used
* to retrieve the data from these <code>ResultSet</code> objects.  If
* a given form of metadata is not available, an empty <code>ResultSet</code>
* will be returned. Additional columns beyond the columns defined to be
* returned by the <code>ResultSet</code> object for a given method
* can be defined by the JDBC driver vendor and must be accessed
* by their <B>column label</B>.
* <P>
* Some <code>DatabaseMetaData</code> methods take arguments that are
* String patterns.  These arguments all have names such as fooPattern.
* Within a pattern String, "%" means match any substring of 0 or more
* characters, and "_" means match any one character. Only metadata
* entries matching the search pattern are returned. If a search pattern
* argument is set to <code>null</code>, that argument's criterion will
* be dropped from the search.
* <P>
*/
extern interface DatabaseMetaData extends java.sql.Wrapper
{
	/**
	* Retrieves whether the current user can call all the procedures
	* returned by the method <code>getProcedures</code>.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function allProceduresAreCallable() : Bool;
	
	/**
	* Retrieves whether the current user can use all the tables returned
	* by the method <code>getTables</code> in a <code>SELECT</code>
	* statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function allTablesAreSelectable() : Bool;
	
	/**
	* Retrieves the URL for this DBMS.
	*
	* @return the URL for this DBMS or <code>null</code> if it cannot be
	*          generated
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getURL() : String;
	
	/**
	* Retrieves the user name as known to this database.
	*
	* @return the database user name
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getUserName() : String;
	
	/**
	* Retrieves whether this database is in read-only mode.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function isReadOnly() : Bool;
	
	/**
	* Retrieves whether <code>NULL</code> values are sorted high.
	* Sorted high means that <code>NULL</code> values
	* sort higher than any other value in a domain.  In an ascending order,
	* if this method returns <code>true</code>,  <code>NULL</code> values
	* will appear at the end. By contrast, the method
	* <code>nullsAreSortedAtEnd</code> indicates whether <code>NULL</code> values
	* are sorted at the end regardless of sort order.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function nullsAreSortedHigh() : Bool;
	
	/**
	* Retrieves whether <code>NULL</code> values are sorted low.
	* Sorted low means that <code>NULL</code> values
	* sort lower than any other value in a domain.  In an ascending order,
	* if this method returns <code>true</code>,  <code>NULL</code> values
	* will appear at the beginning. By contrast, the method
	* <code>nullsAreSortedAtStart</code> indicates whether <code>NULL</code> values
	* are sorted at the beginning regardless of sort order.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function nullsAreSortedLow() : Bool;
	
	/**
	* Retrieves whether <code>NULL</code> values are sorted at the start regardless
	* of sort order.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function nullsAreSortedAtStart() : Bool;
	
	/**
	* Retrieves whether <code>NULL</code> values are sorted at the end regardless of
	* sort order.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function nullsAreSortedAtEnd() : Bool;
	
	/**
	* Retrieves the name of this database product.
	*
	* @return database product name
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getDatabaseProductName() : String;
	
	/**
	* Retrieves the version number of this database product.
	*
	* @return database version number
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getDatabaseProductVersion() : String;
	
	/**
	* Retrieves the name of this JDBC driver.
	*
	* @return JDBC driver name
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getDriverName() : String;
	
	/**
	* Retrieves the version number of this JDBC driver as a <code>String</code>.
	*
	* @return JDBC driver version
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getDriverVersion() : String;
	
	/**
	* Retrieves this JDBC driver's major version number.
	*
	* @return JDBC driver major version
	*/
	@:overload public function getDriverMajorVersion() : Int;
	
	/**
	* Retrieves this JDBC driver's minor version number.
	*
	* @return JDBC driver minor version number
	*/
	@:overload public function getDriverMinorVersion() : Int;
	
	/**
	* Retrieves whether this database stores tables in a local file.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function usesLocalFiles() : Bool;
	
	/**
	* Retrieves whether this database uses a file for each table.
	*
	* @return <code>true</code> if this database uses a local file for each table;
	*         <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function usesLocalFilePerTable() : Bool;
	
	/**
	* Retrieves whether this database treats mixed case unquoted SQL identifiers as
	* case sensitive and as a result stores them in mixed case.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsMixedCaseIdentifiers() : Bool;
	
	/**
	* Retrieves whether this database treats mixed case unquoted SQL identifiers as
	* case insensitive and stores them in upper case.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function storesUpperCaseIdentifiers() : Bool;
	
	/**
	* Retrieves whether this database treats mixed case unquoted SQL identifiers as
	* case insensitive and stores them in lower case.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function storesLowerCaseIdentifiers() : Bool;
	
	/**
	* Retrieves whether this database treats mixed case unquoted SQL identifiers as
	* case insensitive and stores them in mixed case.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function storesMixedCaseIdentifiers() : Bool;
	
	/**
	* Retrieves whether this database treats mixed case quoted SQL identifiers as
	* case sensitive and as a result stores them in mixed case.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsMixedCaseQuotedIdentifiers() : Bool;
	
	/**
	* Retrieves whether this database treats mixed case quoted SQL identifiers as
	* case insensitive and stores them in upper case.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function storesUpperCaseQuotedIdentifiers() : Bool;
	
	/**
	* Retrieves whether this database treats mixed case quoted SQL identifiers as
	* case insensitive and stores them in lower case.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function storesLowerCaseQuotedIdentifiers() : Bool;
	
	/**
	* Retrieves whether this database treats mixed case quoted SQL identifiers as
	* case insensitive and stores them in mixed case.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function storesMixedCaseQuotedIdentifiers() : Bool;
	
	/**
	* Retrieves the string used to quote SQL identifiers.
	* This method returns a space " " if identifier quoting is not supported.
	*
	* @return the quoting string or a space if quoting is not supported
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getIdentifierQuoteString() : String;
	
	/**
	* Retrieves a comma-separated list of all of this database's SQL keywords
	* that are NOT also SQL:2003 keywords.
	*
	* @return the list of this database's keywords that are not also
	*         SQL:2003 keywords
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getSQLKeywords() : String;
	
	/**
	* Retrieves a comma-separated list of math functions available with
	* this database.  These are the Open /Open CLI math function names used in
	* the JDBC function escape clause.
	*
	* @return the list of math functions supported by this database
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getNumericFunctions() : String;
	
	/**
	* Retrieves a comma-separated list of string functions available with
	* this database.  These are the  Open Group CLI string function names used
	* in the JDBC function escape clause.
	*
	* @return the list of string functions supported by this database
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getStringFunctions() : String;
	
	/**
	* Retrieves a comma-separated list of system functions available with
	* this database.  These are the  Open Group CLI system function names used
	* in the JDBC function escape clause.
	*
	* @return a list of system functions supported by this database
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getSystemFunctions() : String;
	
	/**
	* Retrieves a comma-separated list of the time and date functions available
	* with this database.
	*
	* @return the list of time and date functions supported by this database
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getTimeDateFunctions() : String;
	
	/**
	* Retrieves the string that can be used to escape wildcard characters.
	* This is the string that can be used to escape '_' or '%' in
	* the catalog search parameters that are a pattern (and therefore use one
	* of the wildcard characters).
	*
	* <P>The '_' character represents any single character;
	* the '%' character represents any sequence of zero or
	* more characters.
	*
	* @return the string used to escape wildcard characters
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getSearchStringEscape() : String;
	
	/**
	* Retrieves all the "extra" characters that can be used in unquoted
	* identifier names (those beyond a-z, A-Z, 0-9 and _).
	*
	* @return the string containing the extra characters
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getExtraNameCharacters() : String;
	
	/**
	* Retrieves whether this database supports <code>ALTER TABLE</code>
	* with add column.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsAlterTableWithAddColumn() : Bool;
	
	/**
	* Retrieves whether this database supports <code>ALTER TABLE</code>
	* with drop column.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsAlterTableWithDropColumn() : Bool;
	
	/**
	* Retrieves whether this database supports column aliasing.
	*
	* <P>If so, the SQL AS clause can be used to provide names for
	* computed columns or to provide alias names for columns as
	* required.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsColumnAliasing() : Bool;
	
	/**
	* Retrieves whether this database supports concatenations between
	* <code>NULL</code> and non-<code>NULL</code> values being
	* <code>NULL</code>.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function nullPlusNonNullIsNull() : Bool;
	
	/**
	* Retrieves whether this database supports the JDBC scalar function
	* <code>CONVERT</code> for the conversion of one JDBC type to another.
	* The JDBC types are the generic SQL data types defined
	* in <code>java.sql.Types</code>.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsConvert() : Bool;
	
	/**
	* Retrieves whether this database supports the JDBC scalar function
	* <code>CONVERT</code> for conversions between the JDBC types <i>fromType</i>
	* and <i>toType</i>.  The JDBC types are the generic SQL data types defined
	* in <code>java.sql.Types</code>.
	*
	* @param fromType the type to convert from; one of the type codes from
	*        the class <code>java.sql.Types</code>
	* @param toType the type to convert to; one of the type codes from
	*        the class <code>java.sql.Types</code>
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @see Types
	*/
	@:overload public function supportsConvert(fromType : Int, toType : Int) : Bool;
	
	/**
	* Retrieves whether this database supports table correlation names.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsTableCorrelationNames() : Bool;
	
	/**
	* Retrieves whether, when table correlation names are supported, they
	* are restricted to being different from the names of the tables.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsDifferentTableCorrelationNames() : Bool;
	
	/**
	* Retrieves whether this database supports expressions in
	* <code>ORDER BY</code> lists.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsExpressionsInOrderBy() : Bool;
	
	/**
	* Retrieves whether this database supports using a column that is
	* not in the <code>SELECT</code> statement in an
	* <code>ORDER BY</code> clause.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsOrderByUnrelated() : Bool;
	
	/**
	* Retrieves whether this database supports some form of
	* <code>GROUP BY</code> clause.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsGroupBy() : Bool;
	
	/**
	* Retrieves whether this database supports using a column that is
	* not in the <code>SELECT</code> statement in a
	* <code>GROUP BY</code> clause.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsGroupByUnrelated() : Bool;
	
	/**
	* Retrieves whether this database supports using columns not included in
	* the <code>SELECT</code> statement in a <code>GROUP BY</code> clause
	* provided that all of the columns in the <code>SELECT</code> statement
	* are included in the <code>GROUP BY</code> clause.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsGroupByBeyondSelect() : Bool;
	
	/**
	* Retrieves whether this database supports specifying a
	* <code>LIKE</code> escape clause.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsLikeEscapeClause() : Bool;
	
	/**
	* Retrieves whether this database supports getting multiple
	* <code>ResultSet</code> objects from a single call to the
	* method <code>execute</code>.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsMultipleResultSets() : Bool;
	
	/**
	* Retrieves whether this database allows having multiple
	* transactions open at once (on different connections).
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsMultipleTransactions() : Bool;
	
	/**
	* Retrieves whether columns in this database may be defined as non-nullable.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsNonNullableColumns() : Bool;
	
	/**
	* Retrieves whether this database supports the ODBC Minimum SQL grammar.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsMinimumSQLGrammar() : Bool;
	
	/**
	* Retrieves whether this database supports the ODBC Core SQL grammar.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsCoreSQLGrammar() : Bool;
	
	/**
	* Retrieves whether this database supports the ODBC Extended SQL grammar.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsExtendedSQLGrammar() : Bool;
	
	/**
	* Retrieves whether this database supports the ANSI92 entry level SQL
	* grammar.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsANSI92EntryLevelSQL() : Bool;
	
	/**
	* Retrieves whether this database supports the ANSI92 intermediate SQL grammar supported.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsANSI92IntermediateSQL() : Bool;
	
	/**
	* Retrieves whether this database supports the ANSI92 full SQL grammar supported.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsANSI92FullSQL() : Bool;
	
	/**
	* Retrieves whether this database supports the SQL Integrity
	* Enhancement Facility.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsIntegrityEnhancementFacility() : Bool;
	
	/**
	* Retrieves whether this database supports some form of outer join.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsOuterJoins() : Bool;
	
	/**
	* Retrieves whether this database supports full nested outer joins.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsFullOuterJoins() : Bool;
	
	/**
	* Retrieves whether this database provides limited support for outer
	* joins.  (This will be <code>true</code> if the method
	* <code>supportsFullOuterJoins</code> returns <code>true</code>).
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsLimitedOuterJoins() : Bool;
	
	/**
	* Retrieves the database vendor's preferred term for "schema".
	*
	* @return the vendor term for "schema"
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getSchemaTerm() : String;
	
	/**
	* Retrieves the database vendor's preferred term for "procedure".
	*
	* @return the vendor term for "procedure"
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getProcedureTerm() : String;
	
	/**
	* Retrieves the database vendor's preferred term for "catalog".
	*
	* @return the vendor term for "catalog"
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getCatalogTerm() : String;
	
	/**
	* Retrieves whether a catalog appears at the start of a fully qualified
	* table name.  If not, the catalog appears at the end.
	*
	* @return <code>true</code> if the catalog name appears at the beginning
	*         of a fully qualified table name; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function isCatalogAtStart() : Bool;
	
	/**
	* Retrieves the <code>String</code> that this database uses as the
	* separator between a catalog and table name.
	*
	* @return the separator string
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getCatalogSeparator() : String;
	
	/**
	* Retrieves whether a schema name can be used in a data manipulation statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSchemasInDataManipulation() : Bool;
	
	/**
	* Retrieves whether a schema name can be used in a procedure call statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSchemasInProcedureCalls() : Bool;
	
	/**
	* Retrieves whether a schema name can be used in a table definition statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSchemasInTableDefinitions() : Bool;
	
	/**
	* Retrieves whether a schema name can be used in an index definition statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSchemasInIndexDefinitions() : Bool;
	
	/**
	* Retrieves whether a schema name can be used in a privilege definition statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSchemasInPrivilegeDefinitions() : Bool;
	
	/**
	* Retrieves whether a catalog name can be used in a data manipulation statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsCatalogsInDataManipulation() : Bool;
	
	/**
	* Retrieves whether a catalog name can be used in a procedure call statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsCatalogsInProcedureCalls() : Bool;
	
	/**
	* Retrieves whether a catalog name can be used in a table definition statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsCatalogsInTableDefinitions() : Bool;
	
	/**
	* Retrieves whether a catalog name can be used in an index definition statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsCatalogsInIndexDefinitions() : Bool;
	
	/**
	* Retrieves whether a catalog name can be used in a privilege definition statement.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsCatalogsInPrivilegeDefinitions() : Bool;
	
	/**
	* Retrieves whether this database supports positioned <code>DELETE</code>
	* statements.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsPositionedDelete() : Bool;
	
	/**
	* Retrieves whether this database supports positioned <code>UPDATE</code>
	* statements.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsPositionedUpdate() : Bool;
	
	/**
	* Retrieves whether this database supports <code>SELECT FOR UPDATE</code>
	* statements.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSelectForUpdate() : Bool;
	
	/**
	* Retrieves whether this database supports stored procedure calls
	* that use the stored procedure escape syntax.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsStoredProcedures() : Bool;
	
	/**
	* Retrieves whether this database supports subqueries in comparison
	* expressions.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSubqueriesInComparisons() : Bool;
	
	/**
	* Retrieves whether this database supports subqueries in
	* <code>EXISTS</code> expressions.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSubqueriesInExists() : Bool;
	
	/**
	* Retrieves whether this database supports subqueries in
	* <code>IN</code> expressions.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSubqueriesInIns() : Bool;
	
	/**
	* Retrieves whether this database supports subqueries in quantified
	* expressions.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsSubqueriesInQuantifieds() : Bool;
	
	/**
	* Retrieves whether this database supports correlated subqueries.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsCorrelatedSubqueries() : Bool;
	
	/**
	* Retrieves whether this database supports SQL <code>UNION</code>.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsUnion() : Bool;
	
	/**
	* Retrieves whether this database supports SQL <code>UNION ALL</code>.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsUnionAll() : Bool;
	
	/**
	* Retrieves whether this database supports keeping cursors open
	* across commits.
	*
	* @return <code>true</code> if cursors always remain open;
	*       <code>false</code> if they might not remain open
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsOpenCursorsAcrossCommit() : Bool;
	
	/**
	* Retrieves whether this database supports keeping cursors open
	* across rollbacks.
	*
	* @return <code>true</code> if cursors always remain open;
	*       <code>false</code> if they might not remain open
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsOpenCursorsAcrossRollback() : Bool;
	
	/**
	* Retrieves whether this database supports keeping statements open
	* across commits.
	*
	* @return <code>true</code> if statements always remain open;
	*       <code>false</code> if they might not remain open
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsOpenStatementsAcrossCommit() : Bool;
	
	/**
	* Retrieves whether this database supports keeping statements open
	* across rollbacks.
	*
	* @return <code>true</code> if statements always remain open;
	*       <code>false</code> if they might not remain open
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsOpenStatementsAcrossRollback() : Bool;
	
	/**
	* Retrieves the maximum number of hex characters this database allows in an
	* inline binary literal.
	*
	* @return max the maximum length (in hex characters) for a binary literal;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxBinaryLiteralLength() : Int;
	
	/**
	* Retrieves the maximum number of characters this database allows
	* for a character literal.
	*
	* @return the maximum number of characters allowed for a character literal;
	*      a result of zero means that there is no limit or the limit is
	*      not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxCharLiteralLength() : Int;
	
	/**
	* Retrieves the maximum number of characters this database allows
	* for a column name.
	*
	* @return the maximum number of characters allowed for a column name;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxColumnNameLength() : Int;
	
	/**
	* Retrieves the maximum number of columns this database allows in a
	* <code>GROUP BY</code> clause.
	*
	* @return the maximum number of columns allowed;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxColumnsInGroupBy() : Int;
	
	/**
	* Retrieves the maximum number of columns this database allows in an index.
	*
	* @return the maximum number of columns allowed;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxColumnsInIndex() : Int;
	
	/**
	* Retrieves the maximum number of columns this database allows in an
	* <code>ORDER BY</code> clause.
	*
	* @return the maximum number of columns allowed;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxColumnsInOrderBy() : Int;
	
	/**
	* Retrieves the maximum number of columns this database allows in a
	* <code>SELECT</code> list.
	*
	* @return the maximum number of columns allowed;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxColumnsInSelect() : Int;
	
	/**
	* Retrieves the maximum number of columns this database allows in a table.
	*
	* @return the maximum number of columns allowed;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxColumnsInTable() : Int;
	
	/**
	* Retrieves the maximum number of concurrent connections to this
	* database that are possible.
	*
	* @return the maximum number of active connections possible at one time;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxConnections() : Int;
	
	/**
	* Retrieves the maximum number of characters that this database allows in a
	* cursor name.
	*
	* @return the maximum number of characters allowed in a cursor name;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxCursorNameLength() : Int;
	
	/**
	* Retrieves the maximum number of bytes this database allows for an
	* index, including all of the parts of the index.
	*
	* @return the maximum number of bytes allowed; this limit includes the
	*      composite of all the constituent parts of the index;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxIndexLength() : Int;
	
	/**
	* Retrieves the maximum number of characters that this database allows in a
	* schema name.
	*
	* @return the maximum number of characters allowed in a schema name;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxSchemaNameLength() : Int;
	
	/**
	* Retrieves the maximum number of characters that this database allows in a
	* procedure name.
	*
	* @return the maximum number of characters allowed in a procedure name;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxProcedureNameLength() : Int;
	
	/**
	* Retrieves the maximum number of characters that this database allows in a
	* catalog name.
	*
	* @return the maximum number of characters allowed in a catalog name;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxCatalogNameLength() : Int;
	
	/**
	* Retrieves the maximum number of bytes this database allows in
	* a single row.
	*
	* @return the maximum number of bytes allowed for a row; a result of
	*         zero means that there is no limit or the limit is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxRowSize() : Int;
	
	/**
	* Retrieves whether the return value for the method
	* <code>getMaxRowSize</code> includes the SQL data types
	* <code>LONGVARCHAR</code> and <code>LONGVARBINARY</code>.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function doesMaxRowSizeIncludeBlobs() : Bool;
	
	/**
	* Retrieves the maximum number of characters this database allows in
	* an SQL statement.
	*
	* @return the maximum number of characters allowed for an SQL statement;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxStatementLength() : Int;
	
	/**
	* Retrieves the maximum number of active statements to this database
	* that can be open at the same time.
	*
	* @return the maximum number of statements that can be open at one time;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxStatements() : Int;
	
	/**
	* Retrieves the maximum number of characters this database allows in
	* a table name.
	*
	* @return the maximum number of characters allowed for a table name;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxTableNameLength() : Int;
	
	/**
	* Retrieves the maximum number of tables this database allows in a
	* <code>SELECT</code> statement.
	*
	* @return the maximum number of tables allowed in a <code>SELECT</code>
	*         statement; a result of zero means that there is no limit or
	*         the limit is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxTablesInSelect() : Int;
	
	/**
	* Retrieves the maximum number of characters this database allows in
	* a user name.
	*
	* @return the maximum number of characters allowed for a user name;
	*      a result of zero means that there is no limit or the limit
	*      is not known
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getMaxUserNameLength() : Int;
	
	/**
	* Retrieves this database's default transaction isolation level.  The
	* possible values are defined in <code>java.sql.Connection</code>.
	*
	* @return the default isolation level
	* @exception SQLException if a database access error occurs
	* @see Connection
	*/
	@:overload public function getDefaultTransactionIsolation() : Int;
	
	/**
	* Retrieves whether this database supports transactions. If not, invoking the
	* method <code>commit</code> is a noop, and the isolation level is
	* <code>TRANSACTION_NONE</code>.
	*
	* @return <code>true</code> if transactions are supported;
	*         <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsTransactions() : Bool;
	
	/**
	* Retrieves whether this database supports the given transaction isolation level.
	*
	* @param level one of the transaction isolation levels defined in
	*         <code>java.sql.Connection</code>
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @see Connection
	*/
	@:overload public function supportsTransactionIsolationLevel(level : Int) : Bool;
	
	/**
	* Retrieves whether this database supports both data definition and
	* data manipulation statements within a transaction.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsDataDefinitionAndDataManipulationTransactions() : Bool;
	
	/**
	* Retrieves whether this database supports only data manipulation
	* statements within a transaction.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function supportsDataManipulationTransactionsOnly() : Bool;
	
	/**
	* Retrieves whether a data definition statement within a transaction forces
	* the transaction to commit.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function dataDefinitionCausesTransactionCommit() : Bool;
	
	/**
	* Retrieves whether this database ignores a data definition statement
	* within a transaction.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function dataDefinitionIgnoredInTransactions() : Bool;
	
	/**
	* Retrieves a description of the stored procedures available in the given
	* catalog.
	* <P>
	* Only procedure descriptions matching the schema and
	* procedure name criteria are returned.  They are ordered by
	* <code>PROCEDURE_CAT</code>, <code>PROCEDURE_SCHEM</code>,
	* <code>PROCEDURE_NAME</code> and <code>SPECIFIC_ NAME</code>.
	*
	* <P>Each procedure description has the the following columns:
	*  <OL>
	*  <LI><B>PROCEDURE_CAT</B> String => procedure catalog (may be <code>null</code>)
	*  <LI><B>PROCEDURE_SCHEM</B> String => procedure schema (may be <code>null</code>)
	*  <LI><B>PROCEDURE_NAME</B> String => procedure name
	*  <LI> reserved for future use
	*  <LI> reserved for future use
	*  <LI> reserved for future use
	*  <LI><B>REMARKS</B> String => explanatory comment on the procedure
	*  <LI><B>PROCEDURE_TYPE</B> short => kind of procedure:
	*      <UL>
	*      <LI> procedureResultUnknown - Cannot determine if  a return value
	*       will be returned
	*      <LI> procedureNoResult - Does not return a return value
	*      <LI> procedureReturnsResult - Returns a return value
	*      </UL>
	*  <LI><B>SPECIFIC_NAME</B> String  => The name which uniquely identifies this
	* procedure within its schema.
	*  </OL>
	* <p>
	* A user may not have permissions to execute any of the procedures that are
	* returned by <code>getProcedures</code>
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema name pattern; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param procedureNamePattern a procedure name pattern; must match the
	*        procedure name as it is stored in the database
	* @return <code>ResultSet</code> - each row is a procedure description
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	*/
	@:overload public function getProcedures(catalog : String, schemaPattern : String, procedureNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Indicates that it is not known whether the procedure returns
	* a result.
	* <P>
	* A possible value for column <code>PROCEDURE_TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getProcedures</code>.
	*/
	public var procedureResultUnknown : Int;
	
	/**
	* Indicates that the procedure does not return a result.
	* <P>
	* A possible value for column <code>PROCEDURE_TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getProcedures</code>.
	*/
	public var procedureNoResult : Int;
	
	/**
	* Indicates that the procedure returns a result.
	* <P>
	* A possible value for column <code>PROCEDURE_TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getProcedures</code>.
	*/
	public var procedureReturnsResult : Int;
	
	/**
	* Retrieves a description of the given catalog's stored procedure parameter
	* and result columns.
	*
	* <P>Only descriptions matching the schema, procedure and
	* parameter name criteria are returned.  They are ordered by
	* PROCEDURE_CAT, PROCEDURE_SCHEM, PROCEDURE_NAME and SPECIFIC_NAME. Within this, the return value,
	* if any, is first. Next are the parameter descriptions in call
	* order. The column descriptions follow in column number order.
	*
	* <P>Each row in the <code>ResultSet</code> is a parameter description or
	* column description with the following fields:
	*  <OL>
	*  <LI><B>PROCEDURE_CAT</B> String => procedure catalog (may be <code>null</code>)
	*  <LI><B>PROCEDURE_SCHEM</B> String => procedure schema (may be <code>null</code>)
	*  <LI><B>PROCEDURE_NAME</B> String => procedure name
	*  <LI><B>COLUMN_NAME</B> String => column/parameter name
	*  <LI><B>COLUMN_TYPE</B> Short => kind of column/parameter:
	*      <UL>
	*      <LI> procedureColumnUnknown - nobody knows
	*      <LI> procedureColumnIn - IN parameter
	*      <LI> procedureColumnInOut - INOUT parameter
	*      <LI> procedureColumnOut - OUT parameter
	*      <LI> procedureColumnReturn - procedure return value
	*      <LI> procedureColumnResult - result column in <code>ResultSet</code>
	*      </UL>
	*  <LI><B>DATA_TYPE</B> int => SQL type from java.sql.Types
	*  <LI><B>TYPE_NAME</B> String => SQL type name, for a UDT type the
	*  type name is fully qualified
	*  <LI><B>PRECISION</B> int => precision
	*  <LI><B>LENGTH</B> int => length in bytes of data
	*  <LI><B>SCALE</B> short => scale -  null is returned for data types where
	* SCALE is not applicable.
	*  <LI><B>RADIX</B> short => radix
	*  <LI><B>NULLABLE</B> short => can it contain NULL.
	*      <UL>
	*      <LI> procedureNoNulls - does not allow NULL values
	*      <LI> procedureNullable - allows NULL values
	*      <LI> procedureNullableUnknown - nullability unknown
	*      </UL>
	*  <LI><B>REMARKS</B> String => comment describing parameter/column
	*  <LI><B>COLUMN_DEF</B> String => default value for the column, which should be interpreted as a string when the value is enclosed in single quotes (may be <code>null</code>)
	*      <UL>
	*      <LI> The string NULL (not enclosed in quotes) - if NULL was specified as the default value
	*      <LI> TRUNCATE (not enclosed in quotes)        - if the specified default value cannot be represented without truncation
	*      <LI> NULL                                     - if a default value was not specified
	*      </UL>
	*  <LI><B>SQL_DATA_TYPE</B> int  => reserved for future use
	*  <LI><B>SQL_DATETIME_SUB</B> int  => reserved for future use
	*  <LI><B>CHAR_OCTET_LENGTH</B> int  => the maximum length of binary and character based columns.  For any other datatype the returned value is a
	* NULL
	*  <LI><B>ORDINAL_POSITION</B> int  => the ordinal position, starting from 1, for the input and output parameters for a procedure. A value of 0
	*is returned if this row describes the procedure's return value.  For result set columns, it is the
	*ordinal position of the column in the result set starting from 1.  If there are
	*multiple result sets, the column ordinal positions are implementation
	* defined.
	*  <LI><B>IS_NULLABLE</B> String  => ISO rules are used to determine the nullability for a column.
	*       <UL>
	*       <LI> YES           --- if the column can include NULLs
	*       <LI> NO            --- if the column cannot include NULLs
	*       <LI> empty string  --- if the nullability for the
	* column is unknown
	*       </UL>
	*  <LI><B>SPECIFIC_NAME</B> String  => the name which uniquely identifies this procedure within its schema.
	*  </OL>
	*
	* <P><B>Note:</B> Some databases may not return the column
	* descriptions for a procedure.
	*
	* <p>The PRECISION column represents the specified column size for the given column.
	* For numeric data, this is the maximum precision.  For character data, this is the length in characters.
	* For datetime datatypes, this is the length in characters of the String representation (assuming the
	* maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes.  For the ROWID datatype,
	* this is the length in bytes. Null is returned for data types where the
	* column size is not applicable.
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema name pattern; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param procedureNamePattern a procedure name pattern; must match the
	*        procedure name as it is stored in the database
	* @param columnNamePattern a column name pattern; must match the column name
	*        as it is stored in the database
	* @return <code>ResultSet</code> - each row describes a stored procedure parameter or
	*      column
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	*/
	@:overload public function getProcedureColumns(catalog : String, schemaPattern : String, procedureNamePattern : String, columnNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Indicates that type of the column is unknown.
	* <P>
	* A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getProcedureColumns</code>.
	*/
	public var procedureColumnUnknown : Int;
	
	/**
	* Indicates that the column stores IN parameters.
	* <P>
	* A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getProcedureColumns</code>.
	*/
	public var procedureColumnIn : Int;
	
	/**
	* Indicates that the column stores INOUT parameters.
	* <P>
	* A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getProcedureColumns</code>.
	*/
	public var procedureColumnInOut : Int;
	
	/**
	* Indicates that the column stores OUT parameters.
	* <P>
	* A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getProcedureColumns</code>.
	*/
	public var procedureColumnOut : Int;
	
	/**
	* Indicates that the column stores return values.
	* <P>
	* A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getProcedureColumns</code>.
	*/
	public var procedureColumnReturn : Int;
	
	/**
	* Indicates that the column stores results.
	* <P>
	* A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getProcedureColumns</code>.
	*/
	public var procedureColumnResult : Int;
	
	/**
	* Indicates that <code>NULL</code> values are not allowed.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getProcedureColumns</code>.
	*/
	public var procedureNoNulls : Int;
	
	/**
	* Indicates that <code>NULL</code> values are allowed.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getProcedureColumns</code>.
	*/
	public var procedureNullable : Int;
	
	/**
	* Indicates that whether <code>NULL</code> values are allowed
	* is unknown.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getProcedureColumns</code>.
	*/
	public var procedureNullableUnknown : Int;
	
	/**
	* Retrieves a description of the tables available in the given catalog.
	* Only table descriptions matching the catalog, schema, table
	* name and type criteria are returned.  They are ordered by
	* <code>TABLE_TYPE</code>, <code>TABLE_CAT</code>,
	* <code>TABLE_SCHEM</code> and <code>TABLE_NAME</code>.
	* <P>
	* Each table description has the following columns:
	*  <OL>
	*  <LI><B>TABLE_CAT</B> String => table catalog (may be <code>null</code>)
	*  <LI><B>TABLE_SCHEM</B> String => table schema (may be <code>null</code>)
	*  <LI><B>TABLE_NAME</B> String => table name
	*  <LI><B>TABLE_TYPE</B> String => table type.  Typical types are "TABLE",
	*                  "VIEW", "SYSTEM TABLE", "GLOBAL TEMPORARY",
	*                  "LOCAL TEMPORARY", "ALIAS", "SYNONYM".
	*  <LI><B>REMARKS</B> String => explanatory comment on the table
	*  <LI><B>TYPE_CAT</B> String => the types catalog (may be <code>null</code>)
	*  <LI><B>TYPE_SCHEM</B> String => the types schema (may be <code>null</code>)
	*  <LI><B>TYPE_NAME</B> String => type name (may be <code>null</code>)
	*  <LI><B>SELF_REFERENCING_COL_NAME</B> String => name of the designated
	*                  "identifier" column of a typed table (may be <code>null</code>)
	*  <LI><B>REF_GENERATION</B> String => specifies how values in
	*                  SELF_REFERENCING_COL_NAME are created. Values are
	*                  "SYSTEM", "USER", "DERIVED". (may be <code>null</code>)
	*  </OL>
	*
	* <P><B>Note:</B> Some databases may not return information for
	* all tables.
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema name pattern; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param tableNamePattern a table name pattern; must match the
	*        table name as it is stored in the database
	* @param types a list of table types, which must be from the list of table types
	*         returned from {@link #getTableTypes},to include; <code>null</code> returns
	* all types
	* @return <code>ResultSet</code> - each row is a table description
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	*/
	@:overload public function getTables(catalog : String, schemaPattern : String, tableNamePattern : String, types : java.NativeArray<String>) : java.sql.ResultSet;
	
	/**
	* Retrieves the schema names available in this database.  The results
	* are ordered by <code>TABLE_CATALOG</code> and
	* <code>TABLE_SCHEM</code>.
	*
	* <P>The schema columns are:
	*  <OL>
	*  <LI><B>TABLE_SCHEM</B> String => schema name
	*  <LI><B>TABLE_CATALOG</B> String => catalog name (may be <code>null</code>)
	*  </OL>
	*
	* @return a <code>ResultSet</code> object in which each row is a
	*         schema description
	* @exception SQLException if a database access error occurs
	*
	*/
	@:overload public function getSchemas() : java.sql.ResultSet;
	
	/**
	* Retrieves the catalog names available in this database.  The results
	* are ordered by catalog name.
	*
	* <P>The catalog column is:
	*  <OL>
	*  <LI><B>TABLE_CAT</B> String => catalog name
	*  </OL>
	*
	* @return a <code>ResultSet</code> object in which each row has a
	*         single <code>String</code> column that is a catalog name
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getCatalogs() : java.sql.ResultSet;
	
	/**
	* Retrieves the table types available in this database.  The results
	* are ordered by table type.
	*
	* <P>The table type is:
	*  <OL>
	*  <LI><B>TABLE_TYPE</B> String => table type.  Typical types are "TABLE",
	*                  "VIEW", "SYSTEM TABLE", "GLOBAL TEMPORARY",
	*                  "LOCAL TEMPORARY", "ALIAS", "SYNONYM".
	*  </OL>
	*
	* @return a <code>ResultSet</code> object in which each row has a
	*         single <code>String</code> column that is a table type
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getTableTypes() : java.sql.ResultSet;
	
	/**
	* Retrieves a description of table columns available in
	* the specified catalog.
	*
	* <P>Only column descriptions matching the catalog, schema, table
	* and column name criteria are returned.  They are ordered by
	* <code>TABLE_CAT</code>,<code>TABLE_SCHEM</code>,
	* <code>TABLE_NAME</code>, and <code>ORDINAL_POSITION</code>.
	*
	* <P>Each column description has the following columns:
	*  <OL>
	*  <LI><B>TABLE_CAT</B> String => table catalog (may be <code>null</code>)
	*  <LI><B>TABLE_SCHEM</B> String => table schema (may be <code>null</code>)
	*  <LI><B>TABLE_NAME</B> String => table name
	*  <LI><B>COLUMN_NAME</B> String => column name
	*  <LI><B>DATA_TYPE</B> int => SQL type from java.sql.Types
	*  <LI><B>TYPE_NAME</B> String => Data source dependent type name,
	*  for a UDT the type name is fully qualified
	*  <LI><B>COLUMN_SIZE</B> int => column size.
	*  <LI><B>BUFFER_LENGTH</B> is not used.
	*  <LI><B>DECIMAL_DIGITS</B> int => the number of fractional digits. Null is returned for data types where
	* DECIMAL_DIGITS is not applicable.
	*  <LI><B>NUM_PREC_RADIX</B> int => Radix (typically either 10 or 2)
	*  <LI><B>NULLABLE</B> int => is NULL allowed.
	*      <UL>
	*      <LI> columnNoNulls - might not allow <code>NULL</code> values
	*      <LI> columnNullable - definitely allows <code>NULL</code> values
	*      <LI> columnNullableUnknown - nullability unknown
	*      </UL>
	*  <LI><B>REMARKS</B> String => comment describing column (may be <code>null</code>)
	*  <LI><B>COLUMN_DEF</B> String => default value for the column, which should be interpreted as a string when the value is enclosed in single quotes (may be <code>null</code>)
	*  <LI><B>SQL_DATA_TYPE</B> int => unused
	*  <LI><B>SQL_DATETIME_SUB</B> int => unused
	*  <LI><B>CHAR_OCTET_LENGTH</B> int => for char types the
	*       maximum number of bytes in the column
	*  <LI><B>ORDINAL_POSITION</B> int => index of column in table
	*      (starting at 1)
	*  <LI><B>IS_NULLABLE</B> String  => ISO rules are used to determine the nullability for a column.
	*       <UL>
	*       <LI> YES           --- if the column can include NULLs
	*       <LI> NO            --- if the column cannot include NULLs
	*       <LI> empty string  --- if the nullability for the
	* column is unknown
	*       </UL>
	*  <LI><B>SCOPE_CATALOG</B> String => catalog of table that is the scope
	*      of a reference attribute (<code>null</code> if DATA_TYPE isn't REF)
	*  <LI><B>SCOPE_SCHEMA</B> String => schema of table that is the scope
	*      of a reference attribute (<code>null</code> if the DATA_TYPE isn't REF)
	*  <LI><B>SCOPE_TABLE</B> String => table name that this the scope
	*      of a reference attribute (<code>null</code> if the DATA_TYPE isn't REF)
	*  <LI><B>SOURCE_DATA_TYPE</B> short => source type of a distinct type or user-generated
	*      Ref type, SQL type from java.sql.Types (<code>null</code> if DATA_TYPE
	*      isn't DISTINCT or user-generated REF)
	*   <LI><B>IS_AUTOINCREMENT</B> String  => Indicates whether this column is auto incremented
	*       <UL>
	*       <LI> YES           --- if the column is auto incremented
	*       <LI> NO            --- if the column is not auto incremented
	*       <LI> empty string  --- if it cannot be determined whether the column is auto incremented
	*       </UL>
	*   <LI><B>IS_GENERATEDCOLUMN</B> String  => Indicates whether this is a generated column
	*       <UL>
	*       <LI> YES           --- if this a generated column
	*       <LI> NO            --- if this not a generated column
	*       <LI> empty string  --- if it cannot be determined whether this is a generated column
	*       </UL>
	*  </OL>
	*
	* <p>The COLUMN_SIZE column specifies the column size for the given column.
	* For numeric data, this is the maximum precision.  For character data, this is the length in characters.
	* For datetime datatypes, this is the length in characters of the String representation (assuming the
	* maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes.  For the ROWID datatype,
	* this is the length in bytes. Null is returned for data types where the
	* column size is not applicable.
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema name pattern; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param tableNamePattern a table name pattern; must match the
	*        table name as it is stored in the database
	* @param columnNamePattern a column name pattern; must match the column
	*        name as it is stored in the database
	* @return <code>ResultSet</code> - each row is a column description
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	*/
	@:overload public function getColumns(catalog : String, schemaPattern : String, tableNamePattern : String, columnNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Indicates that the column might not allow <code>NULL</code> values.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code>
	* in the <code>ResultSet</code> returned by the method
	* <code>getColumns</code>.
	*/
	public var columnNoNulls : Int;
	
	/**
	* Indicates that the column definitely allows <code>NULL</code> values.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code>
	* in the <code>ResultSet</code> returned by the method
	* <code>getColumns</code>.
	*/
	public var columnNullable : Int;
	
	/**
	* Indicates that the nullability of columns is unknown.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code>
	* in the <code>ResultSet</code> returned by the method
	* <code>getColumns</code>.
	*/
	public var columnNullableUnknown : Int;
	
	/**
	* Retrieves a description of the access rights for a table's columns.
	*
	* <P>Only privileges matching the column name criteria are
	* returned.  They are ordered by COLUMN_NAME and PRIVILEGE.
	*
	* <P>Each privilige description has the following columns:
	*  <OL>
	*  <LI><B>TABLE_CAT</B> String => table catalog (may be <code>null</code>)
	*  <LI><B>TABLE_SCHEM</B> String => table schema (may be <code>null</code>)
	*  <LI><B>TABLE_NAME</B> String => table name
	*  <LI><B>COLUMN_NAME</B> String => column name
	*  <LI><B>GRANTOR</B> String => grantor of access (may be <code>null</code>)
	*  <LI><B>GRANTEE</B> String => grantee of access
	*  <LI><B>PRIVILEGE</B> String => name of access (SELECT,
	*      INSERT, UPDATE, REFRENCES, ...)
	*  <LI><B>IS_GRANTABLE</B> String => "YES" if grantee is permitted
	*      to grant to others; "NO" if not; <code>null</code> if unknown
	*  </OL>
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schema a schema name; must match the schema name as it is
	*        stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param table a table name; must match the table name as it is
	*        stored in the database
	* @param columnNamePattern a column name pattern; must match the column
	*        name as it is stored in the database
	* @return <code>ResultSet</code> - each row is a column privilege description
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	*/
	@:overload public function getColumnPrivileges(catalog : String, schema : String, table : String, columnNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Retrieves a description of the access rights for each table available
	* in a catalog. Note that a table privilege applies to one or
	* more columns in the table. It would be wrong to assume that
	* this privilege applies to all columns (this may be true for
	* some systems but is not true for all.)
	*
	* <P>Only privileges matching the schema and table name
	* criteria are returned.  They are ordered by
	* <code>TABLE_CAT</code>,
	* <code>TABLE_SCHEM</code>, <code>TABLE_NAME</code>,
	* and <code>PRIVILEGE</code>.
	*
	* <P>Each privilige description has the following columns:
	*  <OL>
	*  <LI><B>TABLE_CAT</B> String => table catalog (may be <code>null</code>)
	*  <LI><B>TABLE_SCHEM</B> String => table schema (may be <code>null</code>)
	*  <LI><B>TABLE_NAME</B> String => table name
	*  <LI><B>GRANTOR</B> String => grantor of access (may be <code>null</code>)
	*  <LI><B>GRANTEE</B> String => grantee of access
	*  <LI><B>PRIVILEGE</B> String => name of access (SELECT,
	*      INSERT, UPDATE, REFRENCES, ...)
	*  <LI><B>IS_GRANTABLE</B> String => "YES" if grantee is permitted
	*      to grant to others; "NO" if not; <code>null</code> if unknown
	*  </OL>
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema name pattern; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param tableNamePattern a table name pattern; must match the
	*        table name as it is stored in the database
	* @return <code>ResultSet</code> - each row is a table privilege description
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	*/
	@:overload public function getTablePrivileges(catalog : String, schemaPattern : String, tableNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Retrieves a description of a table's optimal set of columns that
	* uniquely identifies a row. They are ordered by SCOPE.
	*
	* <P>Each column description has the following columns:
	*  <OL>
	*  <LI><B>SCOPE</B> short => actual scope of result
	*      <UL>
	*      <LI> bestRowTemporary - very temporary, while using row
	*      <LI> bestRowTransaction - valid for remainder of current transaction
	*      <LI> bestRowSession - valid for remainder of current session
	*      </UL>
	*  <LI><B>COLUMN_NAME</B> String => column name
	*  <LI><B>DATA_TYPE</B> int => SQL data type from java.sql.Types
	*  <LI><B>TYPE_NAME</B> String => Data source dependent type name,
	*  for a UDT the type name is fully qualified
	*  <LI><B>COLUMN_SIZE</B> int => precision
	*  <LI><B>BUFFER_LENGTH</B> int => not used
	*  <LI><B>DECIMAL_DIGITS</B> short  => scale - Null is returned for data types where
	* DECIMAL_DIGITS is not applicable.
	*  <LI><B>PSEUDO_COLUMN</B> short => is this a pseudo column
	*      like an Oracle ROWID
	*      <UL>
	*      <LI> bestRowUnknown - may or may not be pseudo column
	*      <LI> bestRowNotPseudo - is NOT a pseudo column
	*      <LI> bestRowPseudo - is a pseudo column
	*      </UL>
	*  </OL>
	*
	* <p>The COLUMN_SIZE column represents the specified column size for the given column.
	* For numeric data, this is the maximum precision.  For character data, this is the length in characters.
	* For datetime datatypes, this is the length in characters of the String representation (assuming the
	* maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes.  For the ROWID datatype,
	* this is the length in bytes. Null is returned for data types where the
	* column size is not applicable.
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schema a schema name; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param table a table name; must match the table name as it is stored
	*        in the database
	* @param scope the scope of interest; use same values as SCOPE
	* @param nullable include columns that are nullable.
	* @return <code>ResultSet</code> - each row is a column description
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getBestRowIdentifier(catalog : String, schema : String, table : String, scope : Int, nullable : Bool) : java.sql.ResultSet;
	
	/**
	* Indicates that the scope of the best row identifier is
	* very temporary, lasting only while the
	* row is being used.
	* <P>
	* A possible value for the column
	* <code>SCOPE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getBestRowIdentifier</code>.
	*/
	public var bestRowTemporary : Int;
	
	/**
	* Indicates that the scope of the best row identifier is
	* the remainder of the current transaction.
	* <P>
	* A possible value for the column
	* <code>SCOPE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getBestRowIdentifier</code>.
	*/
	public var bestRowTransaction : Int;
	
	/**
	* Indicates that the scope of the best row identifier is
	* the remainder of the current session.
	* <P>
	* A possible value for the column
	* <code>SCOPE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getBestRowIdentifier</code>.
	*/
	public var bestRowSession : Int;
	
	/**
	* Indicates that the best row identifier may or may not be a pseudo column.
	* <P>
	* A possible value for the column
	* <code>PSEUDO_COLUMN</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getBestRowIdentifier</code>.
	*/
	public var bestRowUnknown : Int;
	
	/**
	* Indicates that the best row identifier is NOT a pseudo column.
	* <P>
	* A possible value for the column
	* <code>PSEUDO_COLUMN</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getBestRowIdentifier</code>.
	*/
	public var bestRowNotPseudo : Int;
	
	/**
	* Indicates that the best row identifier is a pseudo column.
	* <P>
	* A possible value for the column
	* <code>PSEUDO_COLUMN</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getBestRowIdentifier</code>.
	*/
	public var bestRowPseudo : Int;
	
	/**
	* Retrieves a description of a table's columns that are automatically
	* updated when any value in a row is updated.  They are
	* unordered.
	*
	* <P>Each column description has the following columns:
	*  <OL>
	*  <LI><B>SCOPE</B> short => is not used
	*  <LI><B>COLUMN_NAME</B> String => column name
	*  <LI><B>DATA_TYPE</B> int => SQL data type from <code>java.sql.Types</code>
	*  <LI><B>TYPE_NAME</B> String => Data source-dependent type name
	*  <LI><B>COLUMN_SIZE</B> int => precision
	*  <LI><B>BUFFER_LENGTH</B> int => length of column value in bytes
	*  <LI><B>DECIMAL_DIGITS</B> short  => scale - Null is returned for data types where
	* DECIMAL_DIGITS is not applicable.
	*  <LI><B>PSEUDO_COLUMN</B> short => whether this is pseudo column
	*      like an Oracle ROWID
	*      <UL>
	*      <LI> versionColumnUnknown - may or may not be pseudo column
	*      <LI> versionColumnNotPseudo - is NOT a pseudo column
	*      <LI> versionColumnPseudo - is a pseudo column
	*      </UL>
	*  </OL>
	*
	* <p>The COLUMN_SIZE column represents the specified column size for the given column.
	* For numeric data, this is the maximum precision.  For character data, this is the length in characters.
	* For datetime datatypes, this is the length in characters of the String representation (assuming the
	* maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes.  For the ROWID datatype,
	* this is the length in bytes. Null is returned for data types where the
	* column size is not applicable.
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schema a schema name; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param table a table name; must match the table name as it is stored
	*        in the database
	* @return a <code>ResultSet</code> object in which each row is a
	*         column description
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getVersionColumns(catalog : String, schema : String, table : String) : java.sql.ResultSet;
	
	/**
	* Indicates that this version column may or may not be a pseudo column.
	* <P>
	* A possible value for the column
	* <code>PSEUDO_COLUMN</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getVersionColumns</code>.
	*/
	public var versionColumnUnknown : Int;
	
	/**
	* Indicates that this version column is NOT a pseudo column.
	* <P>
	* A possible value for the column
	* <code>PSEUDO_COLUMN</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getVersionColumns</code>.
	*/
	public var versionColumnNotPseudo : Int;
	
	/**
	* Indicates that this version column is a pseudo column.
	* <P>
	* A possible value for the column
	* <code>PSEUDO_COLUMN</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getVersionColumns</code>.
	*/
	public var versionColumnPseudo : Int;
	
	/**
	* Retrieves a description of the given table's primary key columns.  They
	* are ordered by COLUMN_NAME.
	*
	* <P>Each primary key column description has the following columns:
	*  <OL>
	*  <LI><B>TABLE_CAT</B> String => table catalog (may be <code>null</code>)
	*  <LI><B>TABLE_SCHEM</B> String => table schema (may be <code>null</code>)
	*  <LI><B>TABLE_NAME</B> String => table name
	*  <LI><B>COLUMN_NAME</B> String => column name
	*  <LI><B>KEY_SEQ</B> short => sequence number within primary key( a value
	*  of 1 represents the first column of the primary key, a value of 2 would
	*  represent the second column within the primary key).
	*  <LI><B>PK_NAME</B> String => primary key name (may be <code>null</code>)
	*  </OL>
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schema a schema name; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param table a table name; must match the table name as it is stored
	*        in the database
	* @return <code>ResultSet</code> - each row is a primary key column description
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getPrimaryKeys(catalog : String, schema : String, table : String) : java.sql.ResultSet;
	
	/**
	* Retrieves a description of the primary key columns that are
	* referenced by the given table's foreign key columns (the primary keys
	* imported by a table).  They are ordered by PKTABLE_CAT,
	* PKTABLE_SCHEM, PKTABLE_NAME, and KEY_SEQ.
	*
	* <P>Each primary key column description has the following columns:
	*  <OL>
	*  <LI><B>PKTABLE_CAT</B> String => primary key table catalog
	*      being imported (may be <code>null</code>)
	*  <LI><B>PKTABLE_SCHEM</B> String => primary key table schema
	*      being imported (may be <code>null</code>)
	*  <LI><B>PKTABLE_NAME</B> String => primary key table name
	*      being imported
	*  <LI><B>PKCOLUMN_NAME</B> String => primary key column name
	*      being imported
	*  <LI><B>FKTABLE_CAT</B> String => foreign key table catalog (may be <code>null</code>)
	*  <LI><B>FKTABLE_SCHEM</B> String => foreign key table schema (may be <code>null</code>)
	*  <LI><B>FKTABLE_NAME</B> String => foreign key table name
	*  <LI><B>FKCOLUMN_NAME</B> String => foreign key column name
	*  <LI><B>KEY_SEQ</B> short => sequence number within a foreign key( a value
	*  of 1 represents the first column of the foreign key, a value of 2 would
	*  represent the second column within the foreign key).
	*  <LI><B>UPDATE_RULE</B> short => What happens to a
	*       foreign key when the primary key is updated:
	*      <UL>
	*      <LI> importedNoAction - do not allow update of primary
	*               key if it has been imported
	*      <LI> importedKeyCascade - change imported key to agree
	*               with primary key update
	*      <LI> importedKeySetNull - change imported key to <code>NULL</code>
	*               if its primary key has been updated
	*      <LI> importedKeySetDefault - change imported key to default values
	*               if its primary key has been updated
	*      <LI> importedKeyRestrict - same as importedKeyNoAction
	*                                 (for ODBC 2.x compatibility)
	*      </UL>
	*  <LI><B>DELETE_RULE</B> short => What happens to
	*      the foreign key when primary is deleted.
	*      <UL>
	*      <LI> importedKeyNoAction - do not allow delete of primary
	*               key if it has been imported
	*      <LI> importedKeyCascade - delete rows that import a deleted key
	*      <LI> importedKeySetNull - change imported key to NULL if
	*               its primary key has been deleted
	*      <LI> importedKeyRestrict - same as importedKeyNoAction
	*                                 (for ODBC 2.x compatibility)
	*      <LI> importedKeySetDefault - change imported key to default if
	*               its primary key has been deleted
	*      </UL>
	*  <LI><B>FK_NAME</B> String => foreign key name (may be <code>null</code>)
	*  <LI><B>PK_NAME</B> String => primary key name (may be <code>null</code>)
	*  <LI><B>DEFERRABILITY</B> short => can the evaluation of foreign key
	*      constraints be deferred until commit
	*      <UL>
	*      <LI> importedKeyInitiallyDeferred - see SQL92 for definition
	*      <LI> importedKeyInitiallyImmediate - see SQL92 for definition
	*      <LI> importedKeyNotDeferrable - see SQL92 for definition
	*      </UL>
	*  </OL>
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schema a schema name; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param table a table name; must match the table name as it is stored
	*        in the database
	* @return <code>ResultSet</code> - each row is a primary key column description
	* @exception SQLException if a database access error occurs
	* @see #getExportedKeys
	*/
	@:overload public function getImportedKeys(catalog : String, schema : String, table : String) : java.sql.ResultSet;
	
	/**
	* For the column <code>UPDATE_RULE</code>,
	* indicates that
	* when the primary key is updated, the foreign key (imported key)
	* is changed to agree with it.
	* For the column <code>DELETE_RULE</code>,
	* it indicates that
	* when the primary key is deleted, rows that imported that key
	* are deleted.
	* <P>
	* A possible value for the columns <code>UPDATE_RULE</code>
	* and <code>DELETE_RULE</code> in the
	* <code>ResultSet</code> objects returned by the methods
	* <code>getImportedKeys</code>,  <code>getExportedKeys</code>,
	* and <code>getCrossReference</code>.
	*/
	public var importedKeyCascade : Int;
	
	/**
	* For the column <code>UPDATE_RULE</code>, indicates that
	* a primary key may not be updated if it has been imported by
	* another table as a foreign key.
	* For the column <code>DELETE_RULE</code>, indicates that
	* a primary key may not be deleted if it has been imported by
	* another table as a foreign key.
	* <P>
	* A possible value for the columns <code>UPDATE_RULE</code>
	* and <code>DELETE_RULE</code> in the
	* <code>ResultSet</code> objects returned by the methods
	* <code>getImportedKeys</code>,  <code>getExportedKeys</code>,
	* and <code>getCrossReference</code>.
	*/
	public var importedKeyRestrict : Int;
	
	/**
	* For the columns <code>UPDATE_RULE</code>
	* and <code>DELETE_RULE</code>, indicates that
	* when the primary key is updated or deleted, the foreign key (imported key)
	* is changed to <code>NULL</code>.
	* <P>
	* A possible value for the columns <code>UPDATE_RULE</code>
	* and <code>DELETE_RULE</code> in the
	* <code>ResultSet</code> objects returned by the methods
	* <code>getImportedKeys</code>,  <code>getExportedKeys</code>,
	* and <code>getCrossReference</code>.
	*/
	public var importedKeySetNull : Int;
	
	/**
	* For the columns <code>UPDATE_RULE</code>
	* and <code>DELETE_RULE</code>, indicates that
	* if the primary key has been imported, it cannot be updated or deleted.
	* <P>
	* A possible value for the columns <code>UPDATE_RULE</code>
	* and <code>DELETE_RULE</code> in the
	* <code>ResultSet</code> objects returned by the methods
	* <code>getImportedKeys</code>,  <code>getExportedKeys</code>,
	* and <code>getCrossReference</code>.
	*/
	public var importedKeyNoAction : Int;
	
	/**
	* For the columns <code>UPDATE_RULE</code>
	* and <code>DELETE_RULE</code>, indicates that
	* if the primary key is updated or deleted, the foreign key (imported key)
	* is set to the default value.
	* <P>
	* A possible value for the columns <code>UPDATE_RULE</code>
	* and <code>DELETE_RULE</code> in the
	* <code>ResultSet</code> objects returned by the methods
	* <code>getImportedKeys</code>,  <code>getExportedKeys</code>,
	* and <code>getCrossReference</code>.
	*/
	public var importedKeySetDefault : Int;
	
	/**
	* Indicates deferrability.  See SQL-92 for a definition.
	* <P>
	* A possible value for the column <code>DEFERRABILITY</code>
	* in the <code>ResultSet</code> objects returned by the methods
	* <code>getImportedKeys</code>,  <code>getExportedKeys</code>,
	* and <code>getCrossReference</code>.
	*/
	public var importedKeyInitiallyDeferred : Int;
	
	/**
	* Indicates deferrability.  See SQL-92 for a definition.
	* <P>
	* A possible value for the column <code>DEFERRABILITY</code>
	* in the <code>ResultSet</code> objects returned by the methods
	* <code>getImportedKeys</code>,  <code>getExportedKeys</code>,
	* and <code>getCrossReference</code>.
	*/
	public var importedKeyInitiallyImmediate : Int;
	
	/**
	* Indicates deferrability.  See SQL-92 for a definition.
	* <P>
	* A possible value for the column <code>DEFERRABILITY</code>
	* in the <code>ResultSet</code> objects returned by the methods
	* <code>getImportedKeys</code>,  <code>getExportedKeys</code>,
	* and <code>getCrossReference</code>.
	*/
	public var importedKeyNotDeferrable : Int;
	
	/**
	* Retrieves a description of the foreign key columns that reference the
	* given table's primary key columns (the foreign keys exported by a
	* table).  They are ordered by FKTABLE_CAT, FKTABLE_SCHEM,
	* FKTABLE_NAME, and KEY_SEQ.
	*
	* <P>Each foreign key column description has the following columns:
	*  <OL>
	*  <LI><B>PKTABLE_CAT</B> String => primary key table catalog (may be <code>null</code>)
	*  <LI><B>PKTABLE_SCHEM</B> String => primary key table schema (may be <code>null</code>)
	*  <LI><B>PKTABLE_NAME</B> String => primary key table name
	*  <LI><B>PKCOLUMN_NAME</B> String => primary key column name
	*  <LI><B>FKTABLE_CAT</B> String => foreign key table catalog (may be <code>null</code>)
	*      being exported (may be <code>null</code>)
	*  <LI><B>FKTABLE_SCHEM</B> String => foreign key table schema (may be <code>null</code>)
	*      being exported (may be <code>null</code>)
	*  <LI><B>FKTABLE_NAME</B> String => foreign key table name
	*      being exported
	*  <LI><B>FKCOLUMN_NAME</B> String => foreign key column name
	*      being exported
	*  <LI><B>KEY_SEQ</B> short => sequence number within foreign key( a value
	*  of 1 represents the first column of the foreign key, a value of 2 would
	*  represent the second column within the foreign key).
	*  <LI><B>UPDATE_RULE</B> short => What happens to
	*       foreign key when primary is updated:
	*      <UL>
	*      <LI> importedNoAction - do not allow update of primary
	*               key if it has been imported
	*      <LI> importedKeyCascade - change imported key to agree
	*               with primary key update
	*      <LI> importedKeySetNull - change imported key to <code>NULL</code> if
	*               its primary key has been updated
	*      <LI> importedKeySetDefault - change imported key to default values
	*               if its primary key has been updated
	*      <LI> importedKeyRestrict - same as importedKeyNoAction
	*                                 (for ODBC 2.x compatibility)
	*      </UL>
	*  <LI><B>DELETE_RULE</B> short => What happens to
	*      the foreign key when primary is deleted.
	*      <UL>
	*      <LI> importedKeyNoAction - do not allow delete of primary
	*               key if it has been imported
	*      <LI> importedKeyCascade - delete rows that import a deleted key
	*      <LI> importedKeySetNull - change imported key to <code>NULL</code> if
	*               its primary key has been deleted
	*      <LI> importedKeyRestrict - same as importedKeyNoAction
	*                                 (for ODBC 2.x compatibility)
	*      <LI> importedKeySetDefault - change imported key to default if
	*               its primary key has been deleted
	*      </UL>
	*  <LI><B>FK_NAME</B> String => foreign key name (may be <code>null</code>)
	*  <LI><B>PK_NAME</B> String => primary key name (may be <code>null</code>)
	*  <LI><B>DEFERRABILITY</B> short => can the evaluation of foreign key
	*      constraints be deferred until commit
	*      <UL>
	*      <LI> importedKeyInitiallyDeferred - see SQL92 for definition
	*      <LI> importedKeyInitiallyImmediate - see SQL92 for definition
	*      <LI> importedKeyNotDeferrable - see SQL92 for definition
	*      </UL>
	*  </OL>
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in this database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schema a schema name; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param table a table name; must match the table name as it is stored
	*        in this database
	* @return a <code>ResultSet</code> object in which each row is a
	*         foreign key column description
	* @exception SQLException if a database access error occurs
	* @see #getImportedKeys
	*/
	@:overload public function getExportedKeys(catalog : String, schema : String, table : String) : java.sql.ResultSet;
	
	/**
	* Retrieves a description of the foreign key columns in the given foreign key
	* table that reference the primary key or the columns representing a unique constraint of the  parent table (could be the same or a different table).
	* The number of columns returned from the parent table must match the number of
	* columns that make up the foreign key.  They
	* are ordered by FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, and
	* KEY_SEQ.
	*
	* <P>Each foreign key column description has the following columns:
	*  <OL>
	*  <LI><B>PKTABLE_CAT</B> String => parent key table catalog (may be <code>null</code>)
	*  <LI><B>PKTABLE_SCHEM</B> String => parent key table schema (may be <code>null</code>)
	*  <LI><B>PKTABLE_NAME</B> String => parent key table name
	*  <LI><B>PKCOLUMN_NAME</B> String => parent key column name
	*  <LI><B>FKTABLE_CAT</B> String => foreign key table catalog (may be <code>null</code>)
	*      being exported (may be <code>null</code>)
	*  <LI><B>FKTABLE_SCHEM</B> String => foreign key table schema (may be <code>null</code>)
	*      being exported (may be <code>null</code>)
	*  <LI><B>FKTABLE_NAME</B> String => foreign key table name
	*      being exported
	*  <LI><B>FKCOLUMN_NAME</B> String => foreign key column name
	*      being exported
	*  <LI><B>KEY_SEQ</B> short => sequence number within foreign key( a value
	*  of 1 represents the first column of the foreign key, a value of 2 would
	*  represent the second column within the foreign key).
	*  <LI><B>UPDATE_RULE</B> short => What happens to
	*       foreign key when parent key is updated:
	*      <UL>
	*      <LI> importedNoAction - do not allow update of parent
	*               key if it has been imported
	*      <LI> importedKeyCascade - change imported key to agree
	*               with parent key update
	*      <LI> importedKeySetNull - change imported key to <code>NULL</code> if
	*               its parent key has been updated
	*      <LI> importedKeySetDefault - change imported key to default values
	*               if its parent key has been updated
	*      <LI> importedKeyRestrict - same as importedKeyNoAction
	*                                 (for ODBC 2.x compatibility)
	*      </UL>
	*  <LI><B>DELETE_RULE</B> short => What happens to
	*      the foreign key when parent key is deleted.
	*      <UL>
	*      <LI> importedKeyNoAction - do not allow delete of parent
	*               key if it has been imported
	*      <LI> importedKeyCascade - delete rows that import a deleted key
	*      <LI> importedKeySetNull - change imported key to <code>NULL</code> if
	*               its primary key has been deleted
	*      <LI> importedKeyRestrict - same as importedKeyNoAction
	*                                 (for ODBC 2.x compatibility)
	*      <LI> importedKeySetDefault - change imported key to default if
	*               its parent key has been deleted
	*      </UL>
	*  <LI><B>FK_NAME</B> String => foreign key name (may be <code>null</code>)
	*  <LI><B>PK_NAME</B> String => parent key name (may be <code>null</code>)
	*  <LI><B>DEFERRABILITY</B> short => can the evaluation of foreign key
	*      constraints be deferred until commit
	*      <UL>
	*      <LI> importedKeyInitiallyDeferred - see SQL92 for definition
	*      <LI> importedKeyInitiallyImmediate - see SQL92 for definition
	*      <LI> importedKeyNotDeferrable - see SQL92 for definition
	*      </UL>
	*  </OL>
	*
	* @param parentCatalog a catalog name; must match the catalog name
	* as it is stored in the database; "" retrieves those without a
	* catalog; <code>null</code> means drop catalog name from the selection criteria
	* @param parentSchema a schema name; must match the schema name as
	* it is stored in the database; "" retrieves those without a schema;
	* <code>null</code> means drop schema name from the selection criteria
	* @param parentTable the name of the table that exports the key; must match
	* the table name as it is stored in the database
	* @param foreignCatalog a catalog name; must match the catalog name as
	* it is stored in the database; "" retrieves those without a
	* catalog; <code>null</code> means drop catalog name from the selection criteria
	* @param foreignSchema a schema name; must match the schema name as it
	* is stored in the database; "" retrieves those without a schema;
	* <code>null</code> means drop schema name from the selection criteria
	* @param foreignTable the name of the table that imports the key; must match
	* the table name as it is stored in the database
	* @return <code>ResultSet</code> - each row is a foreign key column description
	* @exception SQLException if a database access error occurs
	* @see #getImportedKeys
	*/
	@:overload public function getCrossReference(parentCatalog : String, parentSchema : String, parentTable : String, foreignCatalog : String, foreignSchema : String, foreignTable : String) : java.sql.ResultSet;
	
	/**
	* Retrieves a description of all the data types supported by
	* this database. They are ordered by DATA_TYPE and then by how
	* closely the data type maps to the corresponding JDBC SQL type.
	*
	* <P>If the database supports SQL distinct types, then getTypeInfo() will return
	* a single row with a TYPE_NAME of DISTINCT and a DATA_TYPE of Types.DISTINCT.
	* If the database supports SQL structured types, then getTypeInfo() will return
	* a single row with a TYPE_NAME of STRUCT and a DATA_TYPE of Types.STRUCT.
	*
	* <P>If SQL distinct or structured types are supported, then information on the
	* individual types may be obtained from the getUDTs() method.
	*

	*
	* <P>Each type description has the following columns:
	*  <OL>
	*  <LI><B>TYPE_NAME</B> String => Type name
	*  <LI><B>DATA_TYPE</B> int => SQL data type from java.sql.Types
	*  <LI><B>PRECISION</B> int => maximum precision
	*  <LI><B>LITERAL_PREFIX</B> String => prefix used to quote a literal
	*      (may be <code>null</code>)
	*  <LI><B>LITERAL_SUFFIX</B> String => suffix used to quote a literal
	(may be <code>null</code>)
	*  <LI><B>CREATE_PARAMS</B> String => parameters used in creating
	*      the type (may be <code>null</code>)
	*  <LI><B>NULLABLE</B> short => can you use NULL for this type.
	*      <UL>
	*      <LI> typeNoNulls - does not allow NULL values
	*      <LI> typeNullable - allows NULL values
	*      <LI> typeNullableUnknown - nullability unknown
	*      </UL>
	*  <LI><B>CASE_SENSITIVE</B> boolean=> is it case sensitive.
	*  <LI><B>SEARCHABLE</B> short => can you use "WHERE" based on this type:
	*      <UL>
	*      <LI> typePredNone - No support
	*      <LI> typePredChar - Only supported with WHERE .. LIKE
	*      <LI> typePredBasic - Supported except for WHERE .. LIKE
	*      <LI> typeSearchable - Supported for all WHERE ..
	*      </UL>
	*  <LI><B>UNSIGNED_ATTRIBUTE</B> boolean => is it unsigned.
	*  <LI><B>FIXED_PREC_SCALE</B> boolean => can it be a money value.
	*  <LI><B>AUTO_INCREMENT</B> boolean => can it be used for an
	*      auto-increment value.
	*  <LI><B>LOCAL_TYPE_NAME</B> String => localized version of type name
	*      (may be <code>null</code>)
	*  <LI><B>MINIMUM_SCALE</B> short => minimum scale supported
	*  <LI><B>MAXIMUM_SCALE</B> short => maximum scale supported
	*  <LI><B>SQL_DATA_TYPE</B> int => unused
	*  <LI><B>SQL_DATETIME_SUB</B> int => unused
	*  <LI><B>NUM_PREC_RADIX</B> int => usually 2 or 10
	*  </OL>
	*
	* <p>The PRECISION column represents the maximum column size that the server supports for the given datatype.
	* For numeric data, this is the maximum precision.  For character data, this is the length in characters.
	* For datetime datatypes, this is the length in characters of the String representation (assuming the
	* maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes.  For the ROWID datatype,
	* this is the length in bytes. Null is returned for data types where the
	* column size is not applicable.
	*
	* @return a <code>ResultSet</code> object in which each row is an SQL
	*         type description
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getTypeInfo() : java.sql.ResultSet;
	
	/**
	* Indicates that a <code>NULL</code> value is NOT allowed for this
	* data type.
	* <P>
	* A possible value for column <code>NULLABLE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getTypeInfo</code>.
	*/
	public var typeNoNulls : Int;
	
	/**
	* Indicates that a <code>NULL</code> value is allowed for this
	* data type.
	* <P>
	* A possible value for column <code>NULLABLE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getTypeInfo</code>.
	*/
	public var typeNullable : Int;
	
	/**
	* Indicates that it is not known whether a <code>NULL</code> value
	* is allowed for this data type.
	* <P>
	* A possible value for column <code>NULLABLE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getTypeInfo</code>.
	*/
	public var typeNullableUnknown : Int;
	
	/**
	* Indicates that <code>WHERE</code> search clauses are not supported
	* for this type.
	* <P>
	* A possible value for column <code>SEARCHABLE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getTypeInfo</code>.
	*/
	public var typePredNone : Int;
	
	/**
	* Indicates that the data type
	* can be only be used in <code>WHERE</code> search clauses
	* that  use <code>LIKE</code> predicates.
	* <P>
	* A possible value for column <code>SEARCHABLE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getTypeInfo</code>.
	*/
	public var typePredChar : Int;
	
	/**
	* Indicates that the data type can be only be used in <code>WHERE</code>
	* search clauses
	* that do not use <code>LIKE</code> predicates.
	* <P>
	* A possible value for column <code>SEARCHABLE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getTypeInfo</code>.
	*/
	public var typePredBasic : Int;
	
	/**
	* Indicates that all <code>WHERE</code> search clauses can be
	* based on this type.
	* <P>
	* A possible value for column <code>SEARCHABLE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getTypeInfo</code>.
	*/
	public var typeSearchable : Int;
	
	/**
	* Retrieves a description of the given table's indices and statistics. They are
	* ordered by NON_UNIQUE, TYPE, INDEX_NAME, and ORDINAL_POSITION.
	*
	* <P>Each index column description has the following columns:
	*  <OL>
	*  <LI><B>TABLE_CAT</B> String => table catalog (may be <code>null</code>)
	*  <LI><B>TABLE_SCHEM</B> String => table schema (may be <code>null</code>)
	*  <LI><B>TABLE_NAME</B> String => table name
	*  <LI><B>NON_UNIQUE</B> boolean => Can index values be non-unique.
	*      false when TYPE is tableIndexStatistic
	*  <LI><B>INDEX_QUALIFIER</B> String => index catalog (may be <code>null</code>);
	*      <code>null</code> when TYPE is tableIndexStatistic
	*  <LI><B>INDEX_NAME</B> String => index name; <code>null</code> when TYPE is
	*      tableIndexStatistic
	*  <LI><B>TYPE</B> short => index type:
	*      <UL>
	*      <LI> tableIndexStatistic - this identifies table statistics that are
	*           returned in conjuction with a table's index descriptions
	*      <LI> tableIndexClustered - this is a clustered index
	*      <LI> tableIndexHashed - this is a hashed index
	*      <LI> tableIndexOther - this is some other style of index
	*      </UL>
	*  <LI><B>ORDINAL_POSITION</B> short => column sequence number
	*      within index; zero when TYPE is tableIndexStatistic
	*  <LI><B>COLUMN_NAME</B> String => column name; <code>null</code> when TYPE is
	*      tableIndexStatistic
	*  <LI><B>ASC_OR_DESC</B> String => column sort sequence, "A" => ascending,
	*      "D" => descending, may be <code>null</code> if sort sequence is not supported;
	*      <code>null</code> when TYPE is tableIndexStatistic
	*  <LI><B>CARDINALITY</B> int => When TYPE is tableIndexStatistic, then
	*      this is the number of rows in the table; otherwise, it is the
	*      number of unique values in the index.
	*  <LI><B>PAGES</B> int => When TYPE is  tableIndexStatisic then
	*      this is the number of pages used for the table, otherwise it
	*      is the number of pages used for the current index.
	*  <LI><B>FILTER_CONDITION</B> String => Filter condition, if any.
	*      (may be <code>null</code>)
	*  </OL>
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in this database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schema a schema name; must match the schema name
	*        as it is stored in this database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param table a table name; must match the table name as it is stored
	*        in this database
	* @param unique when true, return only indices for unique values;
	*     when false, return indices regardless of whether unique or not
	* @param approximate when true, result is allowed to reflect approximate
	*     or out of data values; when false, results are requested to be
	*     accurate
	* @return <code>ResultSet</code> - each row is an index column description
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function getIndexInfo(catalog : String, schema : String, table : String, unique : Bool, approximate : Bool) : java.sql.ResultSet;
	
	/**
	* Indicates that this column contains table statistics that
	* are returned in conjunction with a table's index descriptions.
	* <P>
	* A possible value for column <code>TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getIndexInfo</code>.
	*/
	public var tableIndexStatistic : java.StdTypes.Int16;
	
	/**
	* Indicates that this table index is a clustered index.
	* <P>
	* A possible value for column <code>TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getIndexInfo</code>.
	*/
	public var tableIndexClustered : java.StdTypes.Int16;
	
	/**
	* Indicates that this table index is a hashed index.
	* <P>
	* A possible value for column <code>TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getIndexInfo</code>.
	*/
	public var tableIndexHashed : java.StdTypes.Int16;
	
	/**
	* Indicates that this table index is not a clustered
	* index, a hashed index, or table statistics;
	* it is something other than these.
	* <P>
	* A possible value for column <code>TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getIndexInfo</code>.
	*/
	public var tableIndexOther : java.StdTypes.Int16;
	
	/**
	* Retrieves whether this database supports the given result set type.
	*
	* @param type defined in <code>java.sql.ResultSet</code>
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @see Connection
	* @since 1.2
	*/
	@:require(java2) @:overload public function supportsResultSetType(type : Int) : Bool;
	
	/**
	* Retrieves whether this database supports the given concurrency type
	* in combination with the given result set type.
	*
	* @param type defined in <code>java.sql.ResultSet</code>
	* @param concurrency type defined in <code>java.sql.ResultSet</code>
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @see Connection
	* @since 1.2
	*/
	@:require(java2) @:overload public function supportsResultSetConcurrency(type : Int, concurrency : Int) : Bool;
	
	/**
	*
	* Retrieves whether for the given type of <code>ResultSet</code> object,
	* the result set's own updates are visible.
	*
	* @param type the <code>ResultSet</code> type; one of
	*        <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*        <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*        <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @return <code>true</code> if updates are visible for the given result set type;
	*        <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function ownUpdatesAreVisible(type : Int) : Bool;
	
	/**
	* Retrieves whether a result set's own deletes are visible.
	*
	* @param type the <code>ResultSet</code> type; one of
	*        <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*        <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*        <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @return <code>true</code> if deletes are visible for the given result set type;
	*        <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function ownDeletesAreVisible(type : Int) : Bool;
	
	/**
	* Retrieves whether a result set's own inserts are visible.
	*
	* @param type the <code>ResultSet</code> type; one of
	*        <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*        <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*        <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @return <code>true</code> if inserts are visible for the given result set type;
	*        <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function ownInsertsAreVisible(type : Int) : Bool;
	
	/**
	* Retrieves whether updates made by others are visible.
	*
	* @param type the <code>ResultSet</code> type; one of
	*        <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*        <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*        <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @return <code>true</code> if updates made by others
	*        are visible for the given result set type;
	*        <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function othersUpdatesAreVisible(type : Int) : Bool;
	
	/**
	* Retrieves whether deletes made by others are visible.
	*
	* @param type the <code>ResultSet</code> type; one of
	*        <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*        <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*        <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @return <code>true</code> if deletes made by others
	*        are visible for the given result set type;
	*        <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function othersDeletesAreVisible(type : Int) : Bool;
	
	/**
	* Retrieves whether inserts made by others are visible.
	*
	* @param type the <code>ResultSet</code> type; one of
	*        <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*        <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*        <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @return <code>true</code> if inserts made by others
	*         are visible for the given result set type;
	*         <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function othersInsertsAreVisible(type : Int) : Bool;
	
	/**
	* Retrieves whether or not a visible row update can be detected by
	* calling the method <code>ResultSet.rowUpdated</code>.
	*
	* @param type the <code>ResultSet</code> type; one of
	*        <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*        <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*        <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @return <code>true</code> if changes are detected by the result set type;
	*         <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function updatesAreDetected(type : Int) : Bool;
	
	/**
	* Retrieves whether or not a visible row delete can be detected by
	* calling the method <code>ResultSet.rowDeleted</code>.  If the method
	* <code>deletesAreDetected</code> returns <code>false</code>, it means that
	* deleted rows are removed from the result set.
	*
	* @param type the <code>ResultSet</code> type; one of
	*        <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*        <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*        <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @return <code>true</code> if deletes are detected by the given result set type;
	*         <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function deletesAreDetected(type : Int) : Bool;
	
	/**
	* Retrieves whether or not a visible row insert can be detected
	* by calling the method <code>ResultSet.rowInserted</code>.
	*
	* @param type the <code>ResultSet</code> type; one of
	*        <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*        <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*        <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @return <code>true</code> if changes are detected by the specified result
	*         set type; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function insertsAreDetected(type : Int) : Bool;
	
	/**
	* Retrieves whether this database supports batch updates.
	*
	* @return <code>true</code> if this database supports batch upcates;
	*         <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function supportsBatchUpdates() : Bool;
	
	/**
	* Retrieves a description of the user-defined types (UDTs) defined
	* in a particular schema.  Schema-specific UDTs may have type
	* <code>JAVA_OBJECT</code>, <code>STRUCT</code>,
	* or <code>DISTINCT</code>.
	*
	* <P>Only types matching the catalog, schema, type name and type
	* criteria are returned.  They are ordered by <code>DATA_TYPE</code>,
	* <code>TYPE_CAT</code>, <code>TYPE_SCHEM</code>  and
	* <code>TYPE_NAME</code>.  The type name parameter may be a fully-qualified
	* name.  In this case, the catalog and schemaPattern parameters are
	* ignored.
	*
	* <P>Each type description has the following columns:
	*  <OL>
	*  <LI><B>TYPE_CAT</B> String => the type's catalog (may be <code>null</code>)
	*  <LI><B>TYPE_SCHEM</B> String => type's schema (may be <code>null</code>)
	*  <LI><B>TYPE_NAME</B> String => type name
	*  <LI><B>CLASS_NAME</B> String => Java class name
	*  <LI><B>DATA_TYPE</B> int => type value defined in java.sql.Types.
	*     One of JAVA_OBJECT, STRUCT, or DISTINCT
	*  <LI><B>REMARKS</B> String => explanatory comment on the type
	*  <LI><B>BASE_TYPE</B> short => type code of the source type of a
	*     DISTINCT type or the type that implements the user-generated
	*     reference type of the SELF_REFERENCING_COLUMN of a structured
	*     type as defined in java.sql.Types (<code>null</code> if DATA_TYPE is not
	*     DISTINCT or not STRUCT with REFERENCE_GENERATION = USER_DEFINED)
	*  </OL>
	*
	* <P><B>Note:</B> If the driver does not support UDTs, an empty
	* result set is returned.
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema pattern name; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param typeNamePattern a type name pattern; must match the type name
	*        as it is stored in the database; may be a fully qualified name
	* @param types a list of user-defined types (JAVA_OBJECT,
	*        STRUCT, or DISTINCT) to include; <code>null</code> returns all types
	* @return <code>ResultSet</code> object in which each row describes a UDT
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	* @since 1.2
	*/
	@:require(java2) @:overload public function getUDTs(catalog : String, schemaPattern : String, typeNamePattern : String, types : java.NativeArray<Int>) : java.sql.ResultSet;
	
	/**
	* Retrieves the connection that produced this metadata object.
	* <P>
	* @return the connection that produced this metadata object
	* @exception SQLException if a database access error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload public function getConnection() : java.sql.Connection;
	
	/**
	* Retrieves whether this database supports savepoints.
	*
	* @return <code>true</code> if savepoints are supported;
	*         <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function supportsSavepoints() : Bool;
	
	/**
	* Retrieves whether this database supports named parameters to callable
	* statements.
	*
	* @return <code>true</code> if named parameters are supported;
	*         <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function supportsNamedParameters() : Bool;
	
	/**
	* Retrieves whether it is possible to have multiple <code>ResultSet</code> objects
	* returned from a <code>CallableStatement</code> object
	* simultaneously.
	*
	* @return <code>true</code> if a <code>CallableStatement</code> object
	*         can return multiple <code>ResultSet</code> objects
	*         simultaneously; <code>false</code> otherwise
	* @exception SQLException if a datanase access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function supportsMultipleOpenResults() : Bool;
	
	/**
	* Retrieves whether auto-generated keys can be retrieved after
	* a statement has been executed
	*
	* @return <code>true</code> if auto-generated keys can be retrieved
	*         after a statement has executed; <code>false</code> otherwise
	*<p>If <code>true</code> is returned, the JDBC driver must support the
	* returning of auto-generated keys for at least SQL INSERT statements
	*<p>
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function supportsGetGeneratedKeys() : Bool;
	
	/**
	* Retrieves a description of the user-defined type (UDT) hierarchies defined in a
	* particular schema in this database. Only the immediate super type/
	* sub type relationship is modeled.
	* <P>
	* Only supertype information for UDTs matching the catalog,
	* schema, and type name is returned. The type name parameter
	* may be a fully-qualified name. When the UDT name supplied is a
	* fully-qualified name, the catalog and schemaPattern parameters are
	* ignored.
	* <P>
	* If a UDT does not have a direct super type, it is not listed here.
	* A row of the <code>ResultSet</code> object returned by this method
	* describes the designated UDT and a direct supertype. A row has the following
	* columns:
	*  <OL>
	*  <LI><B>TYPE_CAT</B> String => the UDT's catalog (may be <code>null</code>)
	*  <LI><B>TYPE_SCHEM</B> String => UDT's schema (may be <code>null</code>)
	*  <LI><B>TYPE_NAME</B> String => type name of the UDT
	*  <LI><B>SUPERTYPE_CAT</B> String => the direct super type's catalog
	*                           (may be <code>null</code>)
	*  <LI><B>SUPERTYPE_SCHEM</B> String => the direct super type's schema
	*                             (may be <code>null</code>)
	*  <LI><B>SUPERTYPE_NAME</B> String => the direct super type's name
	*  </OL>
	*
	* <P><B>Note:</B> If the driver does not support type hierarchies, an
	* empty result set is returned.
	*
	* @param catalog a catalog name; "" retrieves those without a catalog;
	*        <code>null</code> means drop catalog name from the selection criteria
	* @param schemaPattern a schema name pattern; "" retrieves those
	*        without a schema
	* @param typeNamePattern a UDT name pattern; may be a fully-qualified
	*        name
	* @return a <code>ResultSet</code> object in which a row gives information
	*         about the designated UDT
	* @throws SQLException if a database access error occurs
	* @see #getSearchStringEscape
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSuperTypes(catalog : String, schemaPattern : String, typeNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Retrieves a description of the table hierarchies defined in a particular
	* schema in this database.
	*
	* <P>Only supertable information for tables matching the catalog, schema
	* and table name are returned. The table name parameter may be a fully-
	* qualified name, in which case, the catalog and schemaPattern parameters
	* are ignored. If a table does not have a super table, it is not listed here.
	* Supertables have to be defined in the same catalog and schema as the
	* sub tables. Therefore, the type description does not need to include
	* this information for the supertable.
	*
	* <P>Each type description has the following columns:
	*  <OL>
	*  <LI><B>TABLE_CAT</B> String => the type's catalog (may be <code>null</code>)
	*  <LI><B>TABLE_SCHEM</B> String => type's schema (may be <code>null</code>)
	*  <LI><B>TABLE_NAME</B> String => type name
	*  <LI><B>SUPERTABLE_NAME</B> String => the direct super type's name
	*  </OL>
	*
	* <P><B>Note:</B> If the driver does not support type hierarchies, an
	* empty result set is returned.
	*
	* @param catalog a catalog name; "" retrieves those without a catalog;
	*        <code>null</code> means drop catalog name from the selection criteria
	* @param schemaPattern a schema name pattern; "" retrieves those
	*        without a schema
	* @param tableNamePattern a table name pattern; may be a fully-qualified
	*        name
	* @return a <code>ResultSet</code> object in which each row is a type description
	* @throws SQLException if a database access error occurs
	* @see #getSearchStringEscape
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSuperTables(catalog : String, schemaPattern : String, tableNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Indicates that <code>NULL</code> values might not be allowed.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code> in the <code>ResultSet</code> object
	* returned by the method <code>getAttributes</code>.
	*/
	public var attributeNoNulls : java.StdTypes.Int16;
	
	/**
	* Indicates that <code>NULL</code> values are definitely allowed.
	* <P>
	* A possible value for the column <code>NULLABLE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getAttributes</code>.
	*/
	public var attributeNullable : java.StdTypes.Int16;
	
	/**
	* Indicates that whether <code>NULL</code> values are allowed is not
	* known.
	* <P>
	* A possible value for the column <code>NULLABLE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getAttributes</code>.
	*/
	public var attributeNullableUnknown : java.StdTypes.Int16;
	
	/**
	* Retrieves a description of the given attribute of the given type
	* for a user-defined type (UDT) that is available in the given schema
	* and catalog.
	* <P>
	* Descriptions are returned only for attributes of UDTs matching the
	* catalog, schema, type, and attribute name criteria. They are ordered by
	* <code>TYPE_CAT</code>, <code>TYPE_SCHEM</code>,
	* <code>TYPE_NAME</code> and <code>ORDINAL_POSITION</code>. This description
	* does not contain inherited attributes.
	* <P>
	* The <code>ResultSet</code> object that is returned has the following
	* columns:
	* <OL>
	*  <LI><B>TYPE_CAT</B> String => type catalog (may be <code>null</code>)
	*  <LI><B>TYPE_SCHEM</B> String => type schema (may be <code>null</code>)
	*  <LI><B>TYPE_NAME</B> String => type name
	*  <LI><B>ATTR_NAME</B> String => attribute name
	*  <LI><B>DATA_TYPE</B> int => attribute type SQL type from java.sql.Types
	*  <LI><B>ATTR_TYPE_NAME</B> String => Data source dependent type name.
	*  For a UDT, the type name is fully qualified. For a REF, the type name is
	*  fully qualified and represents the target type of the reference type.
	*  <LI><B>ATTR_SIZE</B> int => column size.  For char or date
	*      types this is the maximum number of characters; for numeric or
	*      decimal types this is precision.
	*  <LI><B>DECIMAL_DIGITS</B> int => the number of fractional digits. Null is returned for data types where
	* DECIMAL_DIGITS is not applicable.
	*  <LI><B>NUM_PREC_RADIX</B> int => Radix (typically either 10 or 2)
	*  <LI><B>NULLABLE</B> int => whether NULL is allowed
	*      <UL>
	*      <LI> attributeNoNulls - might not allow NULL values
	*      <LI> attributeNullable - definitely allows NULL values
	*      <LI> attributeNullableUnknown - nullability unknown
	*      </UL>
	*  <LI><B>REMARKS</B> String => comment describing column (may be <code>null</code>)
	*  <LI><B>ATTR_DEF</B> String => default value (may be <code>null</code>)
	*  <LI><B>SQL_DATA_TYPE</B> int => unused
	*  <LI><B>SQL_DATETIME_SUB</B> int => unused
	*  <LI><B>CHAR_OCTET_LENGTH</B> int => for char types the
	*       maximum number of bytes in the column
	*  <LI><B>ORDINAL_POSITION</B> int => index of the attribute in the UDT
	*      (starting at 1)
	*  <LI><B>IS_NULLABLE</B> String  => ISO rules are used to determine
	* the nullability for a attribute.
	*       <UL>
	*       <LI> YES           --- if the attribute can include NULLs
	*       <LI> NO            --- if the attribute cannot include NULLs
	*       <LI> empty string  --- if the nullability for the
	* attribute is unknown
	*       </UL>
	*  <LI><B>SCOPE_CATALOG</B> String => catalog of table that is the
	*      scope of a reference attribute (<code>null</code> if DATA_TYPE isn't REF)
	*  <LI><B>SCOPE_SCHEMA</B> String => schema of table that is the
	*      scope of a reference attribute (<code>null</code> if DATA_TYPE isn't REF)
	*  <LI><B>SCOPE_TABLE</B> String => table name that is the scope of a
	*      reference attribute (<code>null</code> if the DATA_TYPE isn't REF)
	* <LI><B>SOURCE_DATA_TYPE</B> short => source type of a distinct type or user-generated
	*      Ref type,SQL type from java.sql.Types (<code>null</code> if DATA_TYPE
	*      isn't DISTINCT or user-generated REF)
	*  </OL>
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema name pattern; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param typeNamePattern a type name pattern; must match the
	*        type name as it is stored in the database
	* @param attributeNamePattern an attribute name pattern; must match the attribute
	*        name as it is declared in the database
	* @return a <code>ResultSet</code> object in which each row is an
	*         attribute description
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAttributes(catalog : String, schemaPattern : String, typeNamePattern : String, attributeNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Retrieves whether this database supports the given result set holdability.
	*
	* @param holdability one of the following constants:
	*          <code>ResultSet.HOLD_CURSORS_OVER_COMMIT</code> or
	*          <code>ResultSet.CLOSE_CURSORS_AT_COMMIT<code>
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @see Connection
	* @since 1.4
	*/
	@:require(java4) @:overload public function supportsResultSetHoldability(holdability : Int) : Bool;
	
	/**
	* Retrieves this database's default holdability for <code>ResultSet</code>
	* objects.
	*
	* @return the default holdability; either
	*         <code>ResultSet.HOLD_CURSORS_OVER_COMMIT</code> or
	*         <code>ResultSet.CLOSE_CURSORS_AT_COMMIT</code>
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getResultSetHoldability() : Int;
	
	/**
	* Retrieves the major version number of the underlying database.
	*
	* @return the underlying database's major version
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDatabaseMajorVersion() : Int;
	
	/**
	* Retrieves the minor version number of the underlying database.
	*
	* @return underlying database's minor version
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDatabaseMinorVersion() : Int;
	
	/**
	* Retrieves the major JDBC version number for this
	* driver.
	*
	* @return JDBC version major number
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getJDBCMajorVersion() : Int;
	
	/**
	* Retrieves the minor JDBC version number for this
	* driver.
	*
	* @return JDBC version minor number
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getJDBCMinorVersion() : Int;
	
	/**
	*  A possible return value for the method
	* <code>DatabaseMetaData.getSQLStateType</code> which is used to indicate
	* whether the value returned by the method
	* <code>SQLException.getSQLState</code> is an
	* X/Open (now know as Open Group) SQL CLI SQLSTATE value.
	* <P>
	* @since 1.4
	*/
	@:require(java4) public var sqlStateXOpen : Int;
	
	/**
	*  A possible return value for the method
	* <code>DatabaseMetaData.getSQLStateType</code> which is used to indicate
	* whether the value returned by the method
	* <code>SQLException.getSQLState</code> is an SQLSTATE value.
	* <P>
	* @since 1.6
	*/
	@:require(java6) public var sqlStateSQL : Int;
	
	/**
	*  A possible return value for the method
	* <code>DatabaseMetaData.getSQLStateType</code> which is used to indicate
	* whether the value returned by the method
	* <code>SQLException.getSQLState</code> is an SQL99 SQLSTATE value.
	* <P>
	* <b>Note:</b>This constant remains only for compatibility reasons. Developers
	* should use the constant <code>sqlStateSQL</code> instead.
	*
	* @since 1.4
	*/
	@:require(java4) public var sqlStateSQL99 : Int;
	
	/**
	* Indicates whether the SQLSTATE returned by <code>SQLException.getSQLState</code>
	* is X/Open (now known as Open Group) SQL CLI or SQL:2003.
	* @return the type of SQLSTATE; one of:
	*        sqlStateXOpen or
	*        sqlStateSQL
	* @throws SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSQLStateType() : Int;
	
	/**
	* Indicates whether updates made to a LOB are made on a copy or directly
	* to the LOB.
	* @return <code>true</code> if updates are made to a copy of the LOB;
	*         <code>false</code> if updates are made directly to the LOB
	* @throws SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function locatorsUpdateCopy() : Bool;
	
	/**
	* Retrieves whether this database supports statement pooling.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @throws SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function supportsStatementPooling() : Bool;
	
	/**
	* Indicates whether or not this data source supports the SQL <code>ROWID</code> type,
	* and if so  the lifetime for which a <code>RowId</code> object remains valid.
	* <p>
	* The returned int values have the following relationship:
	* <pre>
	*     ROWID_UNSUPPORTED < ROWID_VALID_OTHER < ROWID_VALID_TRANSACTION
	*         < ROWID_VALID_SESSION < ROWID_VALID_FOREVER
	* </pre>
	* so conditional logic such as
	* <pre>
	*     if (metadata.getRowIdLifetime() > DatabaseMetaData.ROWID_VALID_TRANSACTION)
	* </pre>
	* can be used. Valid Forever means valid across all Sessions, and valid for
	* a Session means valid across all its contained Transactions.
	*
	* @return the status indicating the lifetime of a <code>RowId</code>
	* @throws SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function getRowIdLifetime() : java.sql.RowIdLifetime;
	
	/**
	* Retrieves the schema names available in this database.  The results
	* are ordered by <code>TABLE_CATALOG</code> and
	* <code>TABLE_SCHEM</code>.
	*
	* <P>The schema columns are:
	*  <OL>
	*  <LI><B>TABLE_SCHEM</B> String => schema name
	*  <LI><B>TABLE_CATALOG</B> String => catalog name (may be <code>null</code>)
	*  </OL>
	*
	*
	* @param catalog a catalog name; must match the catalog name as it is stored
	* in the database;"" retrieves those without a catalog; null means catalog
	* name should not be used to narrow down the search.
	* @param schemaPattern a schema name; must match the schema name as it is
	* stored in the database; null means
	* schema name should not be used to narrow down the search.
	* @return a <code>ResultSet</code> object in which each row is a
	*         schema description
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	* @since 1.6
	*/
	@:require(java6) @:overload public function getSchemas(catalog : String, schemaPattern : String) : java.sql.ResultSet;
	
	/**
	* Retrieves whether this database supports invoking user-defined or vendor functions
	* using the stored procedure escape syntax.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function supportsStoredFunctionsUsingCallSyntax() : Bool;
	
	/**
	* Retrieves whether a <code>SQLException</code> while autoCommit is <code>true</code> inidcates
	* that all open ResultSets are closed, even ones that are holdable.  When a <code>SQLException</code> occurs while
	* autocommit is <code>true</code>, it is vendor specific whether the JDBC driver responds with a commit operation, a
	* rollback operation, or by doing neither a commit nor a rollback.  A potential result of this difference
	* is in whether or not holdable ResultSets are closed.
	*
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function autoCommitFailureClosesAllResultSets() : Bool;
	
	/**
	* Retrieves a list of the client info properties
	* that the driver supports.  The result set contains the following columns
	* <p>
	* <ol>
	* <li><b>NAME</b> String=> The name of the client info property<br>
	* <li><b>MAX_LEN</b> int=> The maximum length of the value for the property<br>
	* <li><b>DEFAULT_VALUE</b> String=> The default value of the property<br>
	* <li><b>DESCRIPTION</b> String=> A description of the property.  This will typically
	*                                              contain information as to where this property is
	*                                              stored in the database.
	* </ol>
	* <p>
	* The <code>ResultSet</code> is sorted by the NAME column
	* <p>
	* @return      A <code>ResultSet</code> object; each row is a supported client info
	* property
	* <p>
	*  @exception SQLException if a database access error occurs
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function getClientInfoProperties() : java.sql.ResultSet;
	
	/**
	* Retrieves a description of the  system and user functions available
	* in the given catalog.
	* <P>
	* Only system and user function descriptions matching the schema and
	* function name criteria are returned.  They are ordered by
	* <code>FUNCTION_CAT</code>, <code>FUNCTION_SCHEM</code>,
	* <code>FUNCTION_NAME</code> and
	* <code>SPECIFIC_ NAME</code>.
	*
	* <P>Each function description has the the following columns:
	*  <OL>
	*  <LI><B>FUNCTION_CAT</B> String => function catalog (may be <code>null</code>)
	*  <LI><B>FUNCTION_SCHEM</B> String => function schema (may be <code>null</code>)
	*  <LI><B>FUNCTION_NAME</B> String => function name.  This is the name
	* used to invoke the function
	*  <LI><B>REMARKS</B> String => explanatory comment on the function
	* <LI><B>FUNCTION_TYPE</B> short => kind of function:
	*      <UL>
	*      <LI>functionResultUnknown - Cannot determine if a return value
	*       or table will be returned
	*      <LI> functionNoTable- Does not return a table
	*      <LI> functionReturnsTable - Returns a table
	*      </UL>
	*  <LI><B>SPECIFIC_NAME</B> String  => the name which uniquely identifies
	*  this function within its schema.  This is a user specified, or DBMS
	* generated, name that may be different then the <code>FUNCTION_NAME</code>
	* for example with overload functions
	*  </OL>
	* <p>
	* A user may not have permission to execute any of the functions that are
	* returned by <code>getFunctions</code>
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema name pattern; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param functionNamePattern a function name pattern; must match the
	*        function name as it is stored in the database
	* @return <code>ResultSet</code> - each row is a function description
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	* @since 1.6
	*/
	@:require(java6) @:overload public function getFunctions(catalog : String, schemaPattern : String, functionNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Retrieves a description of the given catalog's system or user
	* function parameters and return type.
	*
	* <P>Only descriptions matching the schema,  function and
	* parameter name criteria are returned. They are ordered by
	* <code>FUNCTION_CAT</code>, <code>FUNCTION_SCHEM</code>,
	* <code>FUNCTION_NAME</code> and
	* <code>SPECIFIC_ NAME</code>. Within this, the return value,
	* if any, is first. Next are the parameter descriptions in call
	* order. The column descriptions follow in column number order.
	*
	* <P>Each row in the <code>ResultSet</code>
	* is a parameter description, column description or
	* return type description with the following fields:
	*  <OL>
	*  <LI><B>FUNCTION_CAT</B> String => function catalog (may be <code>null</code>)
	*  <LI><B>FUNCTION_SCHEM</B> String => function schema (may be <code>null</code>)
	*  <LI><B>FUNCTION_NAME</B> String => function name.  This is the name
	* used to invoke the function
	*  <LI><B>COLUMN_NAME</B> String => column/parameter name
	*  <LI><B>COLUMN_TYPE</B> Short => kind of column/parameter:
	*      <UL>
	*      <LI> functionColumnUnknown - nobody knows
	*      <LI> functionColumnIn - IN parameter
	*      <LI> functionColumnInOut - INOUT parameter
	*      <LI> functionColumnOut - OUT parameter
	*      <LI> functionColumnReturn - function return value
	*      <LI> functionColumnResult - Indicates that the parameter or column
	*  is a column in the <code>ResultSet</code>
	*      </UL>
	*  <LI><B>DATA_TYPE</B> int => SQL type from java.sql.Types
	*  <LI><B>TYPE_NAME</B> String => SQL type name, for a UDT type the
	*  type name is fully qualified
	*  <LI><B>PRECISION</B> int => precision
	*  <LI><B>LENGTH</B> int => length in bytes of data
	*  <LI><B>SCALE</B> short => scale -  null is returned for data types where
	* SCALE is not applicable.
	*  <LI><B>RADIX</B> short => radix
	*  <LI><B>NULLABLE</B> short => can it contain NULL.
	*      <UL>
	*      <LI> functionNoNulls - does not allow NULL values
	*      <LI> functionNullable - allows NULL values
	*      <LI> functionNullableUnknown - nullability unknown
	*      </UL>
	*  <LI><B>REMARKS</B> String => comment describing column/parameter
	*  <LI><B>CHAR_OCTET_LENGTH</B> int  => the maximum length of binary
	* and character based parameters or columns.  For any other datatype the returned value
	* is a NULL
	*  <LI><B>ORDINAL_POSITION</B> int  => the ordinal position, starting
	* from 1, for the input and output parameters. A value of 0
	* is returned if this row describes the function's return value.
	* For result set columns, it is the
	* ordinal position of the column in the result set starting from 1.
	*  <LI><B>IS_NULLABLE</B> String  => ISO rules are used to determine
	* the nullability for a parameter or column.
	*       <UL>
	*       <LI> YES           --- if the parameter or column can include NULLs
	*       <LI> NO            --- if the parameter or column  cannot include NULLs
	*       <LI> empty string  --- if the nullability for the
	* parameter  or column is unknown
	*       </UL>
	*  <LI><B>SPECIFIC_NAME</B> String  => the name which uniquely identifies
	* this function within its schema.  This is a user specified, or DBMS
	* generated, name that may be different then the <code>FUNCTION_NAME</code>
	* for example with overload functions
	*  </OL>
	*
	* <p>The PRECISION column represents the specified column size for the given
	* parameter or column.
	* For numeric data, this is the maximum precision.  For character data, this is the length in characters.
	* For datetime datatypes, this is the length in characters of the String representation (assuming the
	* maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes.  For the ROWID datatype,
	* this is the length in bytes. Null is returned for data types where the
	* column size is not applicable.
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema name pattern; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param functionNamePattern a procedure name pattern; must match the
	*        function name as it is stored in the database
	* @param columnNamePattern a parameter name pattern; must match the
	* parameter or column name as it is stored in the database
	* @return <code>ResultSet</code> - each row describes a
	* user function parameter, column  or return type
	*
	* @exception SQLException if a database access error occurs
	* @see #getSearchStringEscape
	* @since 1.6
	*/
	@:require(java6) @:overload public function getFunctionColumns(catalog : String, schemaPattern : String, functionNamePattern : String, columnNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Indicates that type of the parameter or column is unknown.
	* <P>
	* A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getFunctionColumns</code>.
	*/
	public var functionColumnUnknown : Int;
	
	/**
	* Indicates that the parameter or column is an IN parameter.
	* <P>
	*  A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getFunctionColumns</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionColumnIn : Int;
	
	/**
	* Indicates that the parameter or column is an INOUT parameter.
	* <P>
	* A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getFunctionColumns</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionColumnInOut : Int;
	
	/**
	* Indicates that the parameter or column is an OUT parameter.
	* <P>
	* A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getFunctionColumns</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionColumnOut : Int;
	
	/**
	* Indicates that the parameter or column is a return value.
	* <P>
	*  A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getFunctionColumns</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionReturn : Int;
	
	/**
	* Indicates that the parameter or column is a column in a result set.
	* <P>
	*  A possible value for the column
	* <code>COLUMN_TYPE</code>
	* in the <code>ResultSet</code>
	* returned by the method <code>getFunctionColumns</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionColumnResult : Int;
	
	/**
	* Indicates that <code>NULL</code> values are not allowed.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getFunctionColumns</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionNoNulls : Int;
	
	/**
	* Indicates that <code>NULL</code> values are allowed.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getFunctionColumns</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionNullable : Int;
	
	/**
	* Indicates that whether <code>NULL</code> values are allowed
	* is unknown.
	* <P>
	* A possible value for the column
	* <code>NULLABLE</code>
	* in the <code>ResultSet</code> object
	* returned by the method <code>getFunctionColumns</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionNullableUnknown : Int;
	
	/**
	* Indicates that it is not known whether the function returns
	* a result or a table.
	* <P>
	* A possible value for column <code>FUNCTION_TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getFunctions</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionResultUnknown : Int;
	
	/**
	* Indicates that the function  does not return a table.
	* <P>
	* A possible value for column <code>FUNCTION_TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getFunctions</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionNoTable : Int;
	
	/**
	* Indicates that the function  returns a table.
	* <P>
	* A possible value for column <code>FUNCTION_TYPE</code> in the
	* <code>ResultSet</code> object returned by the method
	* <code>getFunctions</code>.
	* @since 1.6
	*/
	@:require(java6) public var functionReturnsTable : Int;
	
	/**
	* Retrieves a description of the pseudo or hidden columns available
	* in a given table within the specified catalog and schema.
	* Pseudo or hidden columns may not always be stored within
	* a table and are not visible in a ResultSet unless they are
	* specified in the query's outermost SELECT list. Pseudo or hidden
	* columns may not necessarily be able to be modified. If there are
	* no pseudo or hidden columns, an empty ResultSet is returned.
	*
	* <P>Only column descriptions matching the catalog, schema, table
	* and column name criteria are returned.  They are ordered by
	* <code>TABLE_CAT</code>,<code>TABLE_SCHEM</code>, <code>TABLE_NAME</code>
	* and <code>COLUMN_NAME</code>.
	*
	* <P>Each column description has the following columns:
	*  <OL>
	*  <LI><B>TABLE_CAT</B> String => table catalog (may be <code>null</code>)
	*  <LI><B>TABLE_SCHEM</B> String => table schema (may be <code>null</code>)
	*  <LI><B>TABLE_NAME</B> String => table name
	*  <LI><B>COLUMN_NAME</B> String => column name
	*  <LI><B>DATA_TYPE</B> int => SQL type from java.sql.Types
	*  <LI><B>COLUMN_SIZE</B> int => column size.
	*  <LI><B>DECIMAL_DIGITS</B> int => the number of fractional digits. Null is returned for data types where
	* DECIMAL_DIGITS is not applicable.
	*  <LI><B>NUM_PREC_RADIX</B> int => Radix (typically either 10 or 2)
	*  <LI><B>COLUMN_USAGE</B> String => The allowed usage for the column.  The
	*  value returned will correspond to the enum name returned by {@link PseudoColumnUsage#name PseudoColumnUsage.name()}
	*  <LI><B>REMARKS</B> String => comment describing column (may be <code>null</code>)
	*  <LI><B>CHAR_OCTET_LENGTH</B> int => for char types the
	*       maximum number of bytes in the column
	*  <LI><B>IS_NULLABLE</B> String  => ISO rules are used to determine the nullability for a column.
	*       <UL>
	*       <LI> YES           --- if the column can include NULLs
	*       <LI> NO            --- if the column cannot include NULLs
	*       <LI> empty string  --- if the nullability for the column is unknown
	*       </UL>
	*  </OL>
	*
	* <p>The COLUMN_SIZE column specifies the column size for the given column.
	* For numeric data, this is the maximum precision.  For character data, this is the length in characters.
	* For datetime datatypes, this is the length in characters of the String representation (assuming the
	* maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes.  For the ROWID datatype,
	* this is the length in bytes. Null is returned for data types where the
	* column size is not applicable.
	*
	* @param catalog a catalog name; must match the catalog name as it
	*        is stored in the database; "" retrieves those without a catalog;
	*        <code>null</code> means that the catalog name should not be used to narrow
	*        the search
	* @param schemaPattern a schema name pattern; must match the schema name
	*        as it is stored in the database; "" retrieves those without a schema;
	*        <code>null</code> means that the schema name should not be used to narrow
	*        the search
	* @param tableNamePattern a table name pattern; must match the
	*        table name as it is stored in the database
	* @param columnNamePattern a column name pattern; must match the column
	*        name as it is stored in the database
	* @return <code>ResultSet</code> - each row is a column description
	* @exception SQLException if a database access error occurs
	* @see PseudoColumnUsage
	* @since 1.7
	*/
	@:require(java7) @:overload public function getPseudoColumns(catalog : String, schemaPattern : String, tableNamePattern : String, columnNamePattern : String) : java.sql.ResultSet;
	
	/**
	* Retrieves whether a generated key will always be returned if the column
	* name(s) or index(es) specified for the auto generated key column(s)
	* are valid and the statement succeeds.  The key that is returned may or
	* may not be based on the column(s) for the auto generated key.
	* Consult your JDBC driver documentation for additional details.
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.7
	*/
	@:require(java7) @:overload public function generatedKeyAlwaysReturned() : Bool;
	
	
}
