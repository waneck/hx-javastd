package javax.management;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanTrustPermission extends java.security.BasicPermission
{
	/** <p>Create a new MBeanTrustPermission with the given name.</p>
	<p>This constructor is equivalent to
	<code>MBeanTrustPermission(name,null)</code>.</p>
	@param name the name of the permission. It must be
	"register" or "*" for this permission.
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is neither
	* "register" nor "*".
	*/
	@:overload public function new(name : String) : Void;
	
	/** <p>Create a new MBeanTrustPermission with the given name.</p>
	@param name the name of the permission. It must be
	"register" or "*" for this permission.
	@param actions the actions for the permission.  It must be
	null or <code>""</code>.
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is neither
	* "register" nor "*"; or if <code>actions</code> is a non-null
	* non-empty string.
	*/
	@:overload public function new(name : String, actions : String) : Void;
	
	
}
