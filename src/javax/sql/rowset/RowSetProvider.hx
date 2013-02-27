package javax.sql.rowset;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class RowSetProvider
{
	@:overload private function new() : Void;
	
	/**
	* <p>Creates a new instance of a <code>RowSetFactory</code>
	* implementation.  This method uses the following
	* look up order to determine
	* the <code>RowSetFactory</code> implementation class to load:</p>
	* <ul>
	* <li>
	* The System property {@code javax.sql.rowset.RowSetFactory}.  For example:
	* <ul>
	* <li>
	* -Djavax.sql.rowset.RowSetFactory=com.sun.rowset.RowSetFactoryImpl
	* </li>
	* </ul>
	* <li>
	* The {@link ServiceLoader} API. The {@code ServiceLoader} API will look
	* for a class name in the file
	* {@code META-INF/services/javax.sql.rowset.RowSetFactory}
	* in jars available to the runtime. For example, to have the the RowSetFactory
	* implementation {@code com.sun.rowset.RowSetFactoryImpl } loaded, the
	* entry in {@code META-INF/services/javax.sql.rowset.RowSetFactory} would be:
	*  <ul>
	* <li>
	* {@code com.sun.rowset.RowSetFactoryImpl }
	* </li>
	* </ul>
	* </li>
	* <li>
	* Platform default <code>RowSetFactory</code> instance.
	* </li>
	* </ul>
	*
	* <p>Once an application has obtained a reference to a {@code RowSetFactory},
	* it can use the factory to obtain RowSet instances.</p>
	*
	* @return New instance of a <code>RowSetFactory</code>
	*
	* @throws SQLException if the default factory class cannot be loaded,
	* instantiated. The cause will be set to actual Exception
	*
	* @see ServiceLoader
	* @since 1.7
	*/
	@:require(java7) @:overload public static function newFactory() : javax.sql.rowset.RowSetFactory;
	
	/**
	* <p>Creates  a new instance of a <code>RowSetFactory</code> from the
	* specified factory class name.
	* This function is useful when there are multiple providers in the classpath.
	* It gives more control to the application as it can specify which provider
	* should be loaded.</p>
	*
	* <p>Once an application has obtained a reference to a <code>RowSetFactory</code>
	* it can use the factory to obtain RowSet instances.</p>
	*
	* @param factoryClassName fully qualified factory class name that
	* provides  an implementation of <code>javax.sql.rowset.RowSetFactory</code>.
	*
	* @param cl <code>ClassLoader</code> used to load the factory
	* class. If <code>null</code> current <code>Thread</code>'s context
	* classLoader is used to load the factory class.
	*
	* @return New instance of a <code>RowSetFactory</code>
	*
	* @throws SQLException if <code>factoryClassName</code> is
	* <code>null</code>, or the factory class cannot be loaded, instantiated.
	*
	* @see #newFactory()
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public static function newFactory(factoryClassName : String, cl : java.lang.ClassLoader) : javax.sql.rowset.RowSetFactory;
	
	
}
