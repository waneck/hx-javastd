package javax.naming;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CannotProceedException extends javax.naming.NamingException
{
	/**
	* Contains the remaining unresolved part of the second
	* "name" argument to Context.rename().
	* This information necessary for
	* continuing the Context.rename() operation.
	* <p>
	* This field is initialized to null.
	* It should not be manipulated directly:  it should
	* be accessed and updated using getRemainingName() and setRemainingName().
	* @serial
	*
	* @see #getRemainingNewName
	* @see #setRemainingNewName
	*/
	private var remainingNewName : javax.naming.Name;
	
	/**
	* Contains the environment
	* relevant for the Context or DirContext method that cannot proceed.
	* <p>
	* This field is initialized to null.
	* It should not be manipulated directly:  it should be accessed
	* and updated using getEnvironment() and setEnvironment().
	* @serial
	*
	* @see #getEnvironment
	* @see #setEnvironment
	*/
	private var environment : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* Contains the name of the resolved object, relative
	* to the context <code>altNameCtx</code>.  It is a composite name.
	* If null, then no name is specified.
	* See the <code>javax.naming.spi.ObjectFactory.getObjectInstance</code>
	* method for details on how this is used.
	* <p>
	* This field is initialized to null.
	* It should not be manipulated directly:  it should
	* be accessed and updated using getAltName() and setAltName().
	* @serial
	*
	* @see #getAltName
	* @see #setAltName
	* @see #altNameCtx
	* @see javax.naming.spi.ObjectFactory#getObjectInstance
	*/
	private var altName : javax.naming.Name;
	
	/**
	* Contains the context relative to which
	* <code>altName</code> is specified.  If null, then the default initial
	* context is implied.
	* See the <code>javax.naming.spi.ObjectFactory.getObjectInstance</code>
	* method for details on how this is used.
	* <p>
	* This field is initialized to null.
	* It should not be manipulated directly:  it should
	* be accessed and updated using getAltNameCtx() and setAltNameCtx().
	* @serial
	*
	* @see #getAltNameCtx
	* @see #setAltNameCtx
	* @see #altName
	* @see javax.naming.spi.ObjectFactory#getObjectInstance
	*/
	private var altNameCtx : javax.naming.Context;
	
	/**
	* Constructs a new instance of CannotProceedException using an
	* explanation. All unspecified fields default to null.
	*
	* @param   explanation     A possibly null string containing additional
	*                          detail about this exception.
	*   If null, this exception has no detail message.
	* @see java.lang.Throwable#getMessage
	*/
	@:overload public function new(explanation : String) : Void;
	
	/**
	* Constructs a new instance of CannotProceedException.
	* All fields default to null.
	*/
	@:overload public function new() : Void;
	
	/**
	* Retrieves the environment that was in effect when this exception
	* was created.
	* @return Possibly null environment property set.
	*          null means no environment was recorded for this exception.
	* @see #setEnvironment
	*/
	@:overload public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* Sets the environment that will be returned when getEnvironment()
	* is called.
	* @param environment A possibly null environment property set.
	*          null means no environment is being recorded for
	*          this exception.
	* @see #getEnvironment
	*/
	@:overload public function setEnvironment(environment : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Retrieves the "remaining new name" field of this exception, which is
	* used when this exception is thrown during a rename() operation.
	*
	* @return The possibly null part of the new name that has not been resolved.
	*          It is a composite name. It can be null, which means
	*          the remaining new name field has not been set.
	*
	* @see #setRemainingNewName
	*/
	@:overload public function getRemainingNewName() : javax.naming.Name;
	
	/**
	* Sets the "remaining new name" field of this exception.
	* This is the value returned by <code>getRemainingNewName()</code>.
	*<p>
	* <tt>newName</tt> is a composite name. If the intent is to set
	* this field using a compound name or string, you must
	* "stringify" the compound name, and create a composite
	* name with a single component using the string. You can then
	* invoke this method using the resulting composite name.
	*<p>
	* A copy of <code>newName</code> is made and stored.
	* Subsequent changes to <code>name</code> does not
	* affect the copy in this NamingException and vice versa.
	*
	* @param newName The possibly null name to set the "remaining new name" to.
	*          If null, it sets the remaining name field to null.
	*
	* @see #getRemainingNewName
	*/
	@:overload public function setRemainingNewName(newName : javax.naming.Name) : Void;
	
	/**
	* Retrieves the <code>altName</code> field of this exception.
	* This is the name of the resolved object, relative to the context
	* <code>altNameCtx</code>. It will be used during a subsequent call to the
	* <code>javax.naming.spi.ObjectFactory.getObjectInstance</code> method.
	*
	* @return The name of the resolved object, relative to
	*          <code>altNameCtx</code>.
	*          It is a composite name.  If null, then no name is specified.
	*
	* @see #setAltName
	* @see #getAltNameCtx
	* @see javax.naming.spi.ObjectFactory#getObjectInstance
	*/
	@:overload public function getAltName() : javax.naming.Name;
	
	/**
	* Sets the <code>altName</code> field of this exception.
	*
	* @param altName   The name of the resolved object, relative to
	*                  <code>altNameCtx</code>.
	*                  It is a composite name.
	*                  If null, then no name is specified.
	*
	* @see #getAltName
	* @see #setAltNameCtx
	*/
	@:overload public function setAltName(altName : javax.naming.Name) : Void;
	
	/**
	* Retrieves the <code>altNameCtx</code> field of this exception.
	* This is the context relative to which <code>altName</code> is named.
	* It will be used during a subsequent call to the
	* <code>javax.naming.spi.ObjectFactory.getObjectInstance</code> method.
	*
	* @return  The context relative to which <code>altName</code> is named.
	*          If null, then the default initial context is implied.
	*
	* @see #setAltNameCtx
	* @see #getAltName
	* @see javax.naming.spi.ObjectFactory#getObjectInstance
	*/
	@:overload public function getAltNameCtx() : javax.naming.Context;
	
	/**
	* Sets the <code>altNameCtx</code> field of this exception.
	*
	* @param altNameCtx
	*                  The context relative to which <code>altName</code>
	*                  is named.  If null, then the default initial context
	*                  is implied.
	*
	* @see #getAltNameCtx
	* @see #setAltName
	*/
	@:overload public function setAltNameCtx(altNameCtx : javax.naming.Context) : Void;
	
	
}
