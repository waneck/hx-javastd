package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* Implements the <code>PolicyNode</code> interface.
* <p>
* This class provides an implementation of the <code>PolicyNode</code>
* interface, and is used internally to build and search Policy Trees.
* While the implementation is mutable during construction, it is immutable
* before returning to a client and no mutable public or protected methods
* are exposed by this implementation, as per the contract of PolicyNode.
*
* @since       1.4
* @author      Seth Proctor
* @author      Sean Mullan
*/
@:require(java4) @:internal extern class PolicyNodeImpl implements java.security.cert.PolicyNode
{
	@:overload @:public public function getParent() : java.security.cert.PolicyNode;
	
	@:overload @:public public function getChildren() : java.util.Iterator<sun.security.provider.certpath.PolicyNodeImpl>;
	
	@:overload @:public public function getDepth() : Int;
	
	@:overload @:public public function getValidPolicy() : String;
	
	@:overload @:public public function getPolicyQualifiers() : java.util.Set<java.security.cert.PolicyQualifierInfo>;
	
	@:overload @:public public function getExpectedPolicies() : java.util.Set<String>;
	
	@:overload @:public public function isCritical() : Bool;
	
	/**
	* Return a printable representation of the PolicyNode.
	* Starting at the node on which this method is called,
	* it recurses through the tree and prints out each node.
	*
	* @return a String describing the contents of the Policy Node
	*/
	@:overload @:public public function toString() : String;
	
	
}
