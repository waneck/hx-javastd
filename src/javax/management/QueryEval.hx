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
//// java import
extern class QueryEval implements java.io.Serializable
{
	/**
	* <p>Sets the MBean server on which the query is to be performed.
	* The setting is valid for the thread performing the set.
	* It is copied to any threads created by that thread at the moment
	* of their creation.</p>
	*
	* <p>For historical reasons, this method is not static, but its
	* behavior does not depend on the instance on which it is
	* called.</p>
	*
	* @param s The MBean server on which the query is to be performed.
	*
	* @see #getMBeanServer
	*/
	@:overload public function setMBeanServer(s : javax.management.MBeanServer) : Void;
	
	/**
	* <p>Return the MBean server that was most recently given to the
	* {@link #setMBeanServer setMBeanServer} method by this thread.
	* If this thread never called that method, the result is the
	* value its parent thread would have obtained from
	* <code>getMBeanServer</code> at the moment of the creation of
	* this thread, or null if there is no parent thread.</p>
	*
	* @return the MBean server.
	*
	* @see #setMBeanServer
	*
	*/
	@:overload public static function getMBeanServer() : javax.management.MBeanServer;
	
	
}
