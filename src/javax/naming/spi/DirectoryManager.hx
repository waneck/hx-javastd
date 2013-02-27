package javax.naming.spi;
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
extern class DirectoryManager extends javax.naming.spi.NamingManager
{
	/**
	* Creates a context in which to continue a <tt>DirContext</tt> operation.
	* Operates just like <tt>NamingManager.getContinuationContext()</tt>,
	* only the continuation context returned is a <tt>DirContext</tt>.
	*
	* @param cpe
	*         The non-null exception that triggered this continuation.
	* @return A non-null <tt>DirContext</tt> object for continuing the operation.
	* @exception NamingException If a naming exception occurred.
	*
	* @see NamingManager#getContinuationContext(CannotProceedException)
	*/
	@:overload public static function getContinuationDirContext(cpe : javax.naming.CannotProceedException) : javax.naming.directory.DirContext;
	
	/**
	* Creates an instance of an object for the specified object,
	* attributes, and environment.
	* <p>
	* This method is the same as <tt>NamingManager.getObjectInstance</tt>
	* except for the following differences:
	*<ul>
	*<li>
	* It accepts an <tt>Attributes</tt> parameter that contains attributes
	* associated with the object. The <tt>DirObjectFactory</tt> might use these
	* attributes to save having to look them up from the directory.
	*<li>
	* The object factories tried must implement either
	* <tt>ObjectFactory</tt> or <tt>DirObjectFactory</tt>.
	* If it implements <tt>DirObjectFactory</tt>,
	* <tt>DirObjectFactory.getObjectInstance()</tt> is used, otherwise,
	* <tt>ObjectFactory.getObjectInstance()</tt> is used.
	*</ul>
	* Service providers that implement the <tt>DirContext</tt> interface
	* should use this method, not <tt>NamingManager.getObjectInstance()</tt>.
	*<p>
	*
	* @param refInfo The possibly null object for which to create an object.
	* @param name The name of this object relative to <code>nameCtx</code>.
	*         Specifying a name is optional; if it is
	*         omitted, <code>name</code> should be null.
	* @param nameCtx The context relative to which the <code>name</code>
	*         parameter is specified.  If null, <code>name</code> is
	*         relative to the default initial context.
	* @param environment The possibly null environment to
	*         be used in the creation of the object factory and the object.
	* @param attrs The possibly null attributes associated with refInfo.
	*         This might not be the complete set of attributes for refInfo;
	*         you might be able to read more attributes from the directory.
	* @return An object created using <code>refInfo</code> and <tt>attrs</tt>; or
	*         <code>refInfo</code> if an object cannot be created by
	*         a factory.
	* @exception NamingException If a naming exception was encountered
	*         while attempting to get a URL context, or if one of the
	*         factories accessed throws a NamingException.
	* @exception Exception If one of the factories accessed throws an
	*         exception, or if an error was encountered while loading
	*         and instantiating the factory and object classes.
	*         A factory should only throw an exception if it does not want
	*         other factories to be used in an attempt to create an object.
	*         See <tt>DirObjectFactory.getObjectInstance()</tt>.
	* @see NamingManager#getURLContext
	* @see DirObjectFactory
	* @see DirObjectFactory#getObjectInstance
	* @since 1.3
	*/
	@:require(java3) @:native('getObjectInstance') @:overload public static function _getObjectInstance(refInfo : Dynamic, name : javax.naming.Name, nameCtx : javax.naming.Context, environment : java.util.Hashtable<Dynamic, Dynamic>, attrs : javax.naming.directory.Attributes) : Dynamic;
	
	/**
	* Retrieves the state of an object for binding when given the original
	* object and its attributes.
	* <p>
	* This method is like <tt>NamingManager.getStateToBind</tt> except
	* for the following differences:
	*<ul>
	*<li>It accepts an <tt>Attributes</tt> parameter containing attributes
	*    that were passed to the <tt>DirContext.bind()</tt> method.
	*<li>It returns a non-null <tt>DirStateFactory.Result</tt> instance
	*    containing the object to be bound, and the attributes to
	*    accompany the binding. Either the object or the attributes may be null.
	*<li>
	* The state factories tried must each implement either
	* <tt>StateFactory</tt> or <tt>DirStateFactory</tt>.
	* If it implements <tt>DirStateFactory</tt>, then
	* <tt>DirStateFactory.getStateToBind()</tt> is called; otherwise,
	* <tt>StateFactory.getStateToBind()</tt> is called.
	*</ul>
	*
	* Service providers that implement the <tt>DirContext</tt> interface
	* should use this method, not <tt>NamingManager.getStateToBind()</tt>.
	*<p>
	* See NamingManager.getStateToBind() for a description of how
	* the list of state factories to be tried is determined.
	*<p>
	* The object returned by this method is owned by the caller.
	* The implementation will not subsequently modify it.
	* It will contain either a new <tt>Attributes</tt> object that is
	* likewise owned by the caller, or a reference to the original
	* <tt>attrs</tt> parameter.
	*
	* @param obj The non-null object for which to get state to bind.
	* @param name The name of this object relative to <code>nameCtx</code>,
	*         or null if no name is specified.
	* @param nameCtx The context relative to which the <code>name</code>
	*         parameter is specified, or null if <code>name</code> is
	*         relative to the default initial context.
	* @param environment The possibly null environment to
	*         be used in the creation of the state factory and
	*         the object's state.
	* @param attrs The possibly null Attributes that is to be bound with the
	*         object.
	* @return A non-null DirStateFactory.Result containing
	*  the object and attributes to be bound.
	*  If no state factory returns a non-null answer, the result will contain
	*  the object (<tt>obj</tt>) itself with the original attributes.
	* @exception NamingException If a naming exception was encountered
	*         while using the factories.
	*         A factory should only throw an exception if it does not want
	*         other factories to be used in an attempt to create an object.
	*         See <tt>DirStateFactory.getStateToBind()</tt>.
	* @see DirStateFactory
	* @see DirStateFactory#getStateToBind
	* @see NamingManager#getStateToBind
	* @since 1.3
	*/
	@:require(java3) @:native('getStateToBind') @:overload public static function _getStateToBind(obj : Dynamic, name : javax.naming.Name, nameCtx : javax.naming.Context, environment : java.util.Hashtable<Dynamic, Dynamic>, attrs : javax.naming.directory.Attributes) : javax.naming.spi.DirStateFactory.DirStateFactory_Result;
	
	
}
