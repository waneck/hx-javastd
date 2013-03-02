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
extern interface DirStateFactory extends javax.naming.spi.StateFactory
{
	/**
	* Retrieves the state of an object for binding given the object and attributes
	* to be transformed.
	*<p>
	* <tt>DirectoryManager.getStateToBind()</tt>
	* successively loads in state factories. If a factory implements
	* <tt>DirStateFactory</tt>, <tt>DirectoryManager</tt> invokes this method;
	* otherwise, it invokes <tt>StateFactory.getStateToBind()</tt>.
	* It does this until a factory produces a non-null answer.
	*<p>
	* When an exception is thrown by a factory,
	* the exception is passed on to the caller
	* of <tt>DirectoryManager.getStateToBind()</tt>. The search for other factories
	* that may produce a non-null answer is halted.
	* A factory should only throw an exception if it is sure that
	* it is the only intended factory and that no other factories
	* should be tried.
	* If this factory cannot create an object using the arguments supplied,
	* it should return null.
	* <p>
	* The <code>name</code> and <code>nameCtx</code> parameters may
	* optionally be used to specify the name of the object being created.
	* See the description of "Name and Context Parameters" in
	* {@link ObjectFactory#getObjectInstance ObjectFactory.getObjectInstance()}
	* for details.
	* If a factory uses <code>nameCtx</code> it should synchronize its use
	* against concurrent access, since context implementations are not
	* guaranteed to be thread-safe.
	*<p>
	* The <tt>name</tt>, <tt>inAttrs</tt>, and <tt>environment</tt> parameters
	* are owned by the caller.
	* The implementation will not modify these objects or keep references
	* to them, although it may keep references to clones or copies.
	* The object returned by this method is owned by the caller.
	* The implementation will not subsequently modify it.
	* It will contain either a new <tt>Attributes</tt> object that is
	* likewise owned by the caller, or a reference to the original
	* <tt>inAttrs</tt> parameter.
	*
	* @param obj A possibly null object whose state is to be retrieved.
	* @param name The name of this object relative to <code>nameCtx</code>,
	*              or null if no name is specified.
	* @param nameCtx The context relative to which the <code>name</code>
	*              parameter is specified, or null if <code>name</code> is
	*              relative to the default initial context.
	* @param environment The possibly null environment to
	*              be used in the creation of the object's state.
	* @param inAttrs The possibly null attributes to be bound with the object.
	*      The factory must not modify <tt>inAttrs</tt>.
	* @return A <tt>Result</tt> containing the object's state for binding
	* and the corresponding
	* attributes to be bound; null if the object don't use this factory.
	* @exception NamingException If this factory encountered an exception
	* while attempting to get the object's state, and no other factories are
	* to be tried.
	*
	* @see DirectoryManager#getStateToBind
	*/
	@:overload public function getStateToBind(obj : Dynamic, name : javax.naming.Name, nameCtx : javax.naming.Context, environment : java.util.Hashtable<Dynamic, Dynamic>, inAttrs : javax.naming.directory.Attributes) : javax.naming.spi.DirStateFactory.DirStateFactory_Result;
	
	
}
/**
* An object/attributes pair for returning the result of
* DirStateFactory.getStateToBind().
*/
@:native('javax$naming$spi$DirStateFactory$Result') extern class DirStateFactory_Result
{
	/**
	* Constructs an instance of Result.
	*
	* @param obj The possibly null object to be bound.
	* @param outAttrs The possibly null attributes to be bound.
	*/
	@:overload public function new(obj : Dynamic, outAttrs : javax.naming.directory.Attributes) : Void;
	
	/**
	* Retrieves the object to be bound.
	* @return The possibly null object to be bound.
	*/
	@:overload public function getObject() : Dynamic;
	
	/**
	* Retrieves the attributes to be bound.
	* @return The possibly null attributes to be bound.
	*/
	@:overload public function getAttributes() : javax.naming.directory.Attributes;
	
	
}
