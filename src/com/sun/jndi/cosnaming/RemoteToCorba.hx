package com.sun.jndi.cosnaming;
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
extern class RemoteToCorba implements javax.naming.spi.StateFactory
{
	/**
	* StateFactory that turns java.rmi.Remote objects to org.omg.CORBA.Object.
	*
	* @author Rosanna Lee
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the CORBA object for a Remote object.
	* If input is not a Remote object, or if Remote object uses JRMP, return null.
	* If the RMI-IIOP library is not available, throw ConfigurationException.
	*
	* @param orig The object to turn into a CORBA object. If not Remote,
	*             or if is a JRMP stub or impl, return null.
	* @param name Ignored
	* @param ctx The non-null CNCtx whose ORB to use.
	* @param env Ignored
	* @return The CORBA object for <tt>orig</tt> or null.
	* @exception ConfigurationException If the CORBA object cannot be obtained
	*    due to configuration problems, for instance, if RMI-IIOP not available.
	* @exception NamingException If some other problem prevented a CORBA
	*    object from being obtained from the Remote object.
	*/
	@:overload @:public public function getStateToBind(orig : Dynamic, name : javax.naming.Name, ctx : javax.naming.Context, env : java.util.Hashtable<Dynamic, Dynamic>) : Dynamic;
	
	
}
