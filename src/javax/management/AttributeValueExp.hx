package javax.management;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class AttributeValueExp implements javax.management.ValueExp
{
	/**
	* An <code>AttributeValueExp</code> with a null attribute.
	* @deprecated An instance created with this constructor cannot be
	* used in a query.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new <CODE>AttributeValueExp</CODE> representing the
	* specified object attribute, named attr.
	*
	* @param attr the name of the attribute whose value is the value
	* of this {@link ValueExp}.
	*/
	@:overload @:public public function new(attr : String) : Void;
	
	/**
	* Returns a string representation of the name of the attribute.
	*
	* @return the attribute name.
	*/
	@:overload @:public public function getAttributeName() : String;
	
	/**
	* <p>Applies the <CODE>AttributeValueExp</CODE> on an MBean.
	* This method calls {@link #getAttribute getAttribute(name)} and wraps
	* the result as a {@code ValueExp}.  The value returned by
	* {@code getAttribute} must be a {@code Number}, {@code String},
	* or {@code Boolean}; otherwise this method throws a
	* {@code BadAttributeValueExpException}, which will cause
	* the containing query to be false for this {@code name}.</p>
	*
	* @param name The name of the MBean on which the <CODE>AttributeValueExp</CODE> will be applied.
	*
	* @return  The <CODE>ValueExp</CODE>.
	*
	* @exception BadAttributeValueExpException
	* @exception InvalidApplicationException
	* @exception BadStringOperationException
	* @exception BadBinaryOpValueExpException
	*
	*/
	@:overload @:public public function apply(name : javax.management.ObjectName) : javax.management.ValueExp;
	
	/**
	* Returns the string representing its value.
	*/
	@:overload @:public public function toString() : String;
	
	/* There is no need for this method, because if a query is being
	evaluted an AttributeValueExp can only appear inside a QueryExp,
	and that QueryExp will itself have done setMBeanServer.  */
	@:overload @:public public function setMBeanServer(s : javax.management.MBeanServer) : Void;
	
	/**
	* <p>Return the value of the given attribute in the named MBean.
	* If the attempt to access the attribute generates an exception,
	* return null.</p>
	*
	* <p>The MBean Server used is the one returned by {@link
	* QueryEval#getMBeanServer()}.</p>
	*
	* @param name the name of the MBean whose attribute is to be returned.
	*
	* @return the value of the attribute, or null if it could not be
	* obtained.
	*/
	@:overload @:protected private function getAttribute(name : javax.management.ObjectName) : Dynamic;
	
	
}
