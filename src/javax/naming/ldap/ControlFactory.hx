package javax.naming.ldap;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ControlFactory
{
	/*
	* Creates a new instance of a control factory.
	*/
	@:overload private function new() : Void;
	
	/**
	* Creates a control using this control factory.
	*<p>
	* The factory is used by the service provider to return controls
	* that it reads from the LDAP protocol as specialized control classes.
	* Without this mechanism, the provider would be returning
	* controls that only contained data in BER encoded format.
	*<p>
	* Typically, <tt>ctl</tt> is a "basic" control containing
	* BER encoded data. The factory is used to create a specialized
	* control implementation, usually by decoding the BER encoded data,
	* that provides methods to access that data in a type-safe and friendly
	* manner.
	* <p>
	* For example, a factory might use the BER encoded data in
	* basic control and return an instance of a VirtualListReplyControl.
	*<p>
	* If this factory cannot create a control using the argument supplied,
	* it should return null.
	* A factory should only throw an exception if it is sure that
	* it is the only intended factory and that no other control factories
	* should be tried. This might happen, for example, if the BER data
	* in the control does not match what is expected of a control with
	* the given OID. Since this method throws <tt>NamingException</tt>,
	* any other internally generated exception that should be propagated
	* must be wrapped inside a <tt>NamingException</tt>.
	*
	* @param ctl A non-null control.
	*
	* @return A possibly null Control.
	* @exception NamingException If <tt>ctl</tt> contains invalid data that prevents it
	* from being used to create a control. A factory should only throw
	* an exception if it knows how to produce the control (identified by the OID)
	* but is unable to because of, for example invalid BER data.
	*/
	@:overload @:abstract public function getControlInstance(ctl : javax.naming.ldap.Control) : javax.naming.ldap.Control;
	
	/**
	* Creates a control using known control factories.
	* <p>
	* The following rule is used to create the control:
	*<ul>
	* <li> Use the control factories specified in
	*    the <tt>LdapContext.CONTROL_FACTORIES</tt> property of the
	*    environment, and of the provider resource file associated with
	*    <tt>ctx</tt>, in that order.
	*    The value of this property is a colon-separated list of factory
	*    class names that are tried in order, and the first one that succeeds
	*    in creating the control is the one used.
	*    If none of the factories can be loaded,
	*    return <code>ctl</code>.
	*    If an exception is encountered while creating the control, the
	*    exception is passed up to the caller.
	*</ul>
	* <p>
	* Note that a control factory
	* must be public and must have a public constructor that accepts no arguments.
	* <p>
	* @param ctl The non-null control object containing the OID and BER data.
	* @param ctx The possibly null context in which the control is being created.
	* If null, no such information is available.
	* @param env The possibly null environment of the context. This is used
	* to find the value of the <tt>LdapContext.CONTROL_FACTORIES</tt> property.
	* @return A control object created using <code>ctl</code>; or
	*         <code>ctl</code> if a control object cannot be created using
	*         the algorithm described above.
	* @exception NamingException if a naming exception was encountered
	*         while attempting to create the control object.
	*         If one of the factories accessed throws an
	*         exception, it is propagated up to the caller.
	* If an error was encountered while loading
	* and instantiating the factory and object classes, the exception
	* is wrapped inside a <tt>NamingException</tt> and then rethrown.
	*/
	@:native('getControlInstance') @:overload public static function _getControlInstance(ctl : javax.naming.ldap.Control, ctx : javax.naming.Context, env : java.util.Hashtable<Dynamic, Dynamic>) : javax.naming.ldap.Control;
	
	
}
