package javax.sql.rowset;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class RowSetWarning extends java.sql.SQLException
{
	/**
	* Constructs a <code>RowSetWarning</code> object
	* with the given value for the reason; SQLState defaults to null,
	* and vendorCode defaults to 0.
	*
	* @param reason a <code>String</code> object giving a description
	*        of the warning; if the <code>String</code> is <code>null</code>,
	*        this constructor behaves like the default (zero parameter)
	*        <code>RowSetWarning</code> constructor
	*/
	@:overload @:public public function new(reason : String) : Void;
	
	/**
	* Constructs a default <code>RowSetWarning</code> object. The reason
	* defaults to <code>null</code>, SQLState defaults to null and vendorCode
	* defaults to 0.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a <code>RowSetWarning</code> object initialized with the
	* given values for the reason and SQLState. The vendor code defaults to 0.
	*
	* If the <code>reason</code> or <code>SQLState</code> parameters are <code>null</code>,
	* this constructor behaves like the default (zero parameter)
	* <code>RowSetWarning</code> constructor.
	*
	* @param reason a <code>String</code> giving a description of the
	*        warning;
	* @param SQLState an XOPEN code identifying the warning; if a non standard
	*        XOPEN <i>SQLState</i> is supplied, no exception is thrown.
	*/
	@:overload @:public public function new(reason : String, SQLState : String) : Void;
	
	/**
	* Constructs a fully specified <code>RowSetWarning</code> object initialized
	* with the given values for the reason, SQLState and vendorCode.
	*
	* If the <code>reason</code>, or the  <code>SQLState</code>
	* parameters are <code>null</code>, this constructor behaves like the default
	* (zero parameter) <code>RowSetWarning</code> constructor.
	*
	* @param reason a <code>String</code> giving a description of the
	*        warning;
	* @param SQLState an XOPEN code identifying the warning; if a non standard
	*        XPOEN <i>SQLState</i> is supplied, no exception is thrown.
	* @param vendorCode a database vendor-specific warning code
	*/
	@:overload @:public public function new(reason : String, SQLState : String, vendorCode : Int) : Void;
	
	/**
	* Retrieves the warning chained to this <code>RowSetWarning</code>
	* object.
	*
	* @return the <code>RowSetWarning</code> object chained to this one; if no
	*         <code>RowSetWarning</code> object is chained to this one,
	*         <code>null</code> is returned (default value)
	* @see #setNextWarning
	*/
	@:overload @:public public function getNextWarning() : javax.sql.rowset.RowSetWarning;
	
	/**
	* Sets <i>warning</i> as the next warning, that is, the warning chained
	* to this <code>RowSetWarning</code> object.
	*
	* @param warning the <code>RowSetWarning</code> object to be set as the
	*     next warning; if the <code>RowSetWarning</code> is null, this
	*     represents the finish point in the warning chain
	* @see #getNextWarning
	*/
	@:overload @:public public function setNextWarning(warning : javax.sql.rowset.RowSetWarning) : Void;
	
	
}
