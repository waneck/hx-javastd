package java.security.cert;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface PolicyNode
{
	/**
	* Returns the parent of this node, or <code>null</code> if this is the
	* root node.
	*
	* @return the parent of this node, or <code>null</code> if this is the
	* root node
	*/
	@:overload public function getParent() : PolicyNode;
	
	/**
	* Returns an iterator over the children of this node. Any attempts to
	* modify the children of this node through the
	* <code>Iterator</code>'s remove method must throw an
	* <code>UnsupportedOperationException</code>.
	*
	* @return an iterator over the children of this node
	*/
	@:overload public function getChildren() : java.util.Iterator<PolicyNode>;
	
	/**
	* Returns the depth of this node in the valid policy tree.
	*
	* @return the depth of this node (0 for the root node, 1 for its
	* children, and so on)
	*/
	@:overload public function getDepth() : Int;
	
	/**
	* Returns the valid policy represented by this node.
	*
	* @return the <code>String</code> OID of the valid policy
	* represented by this node. For the root node, this method always returns
	* the special anyPolicy OID: "2.5.29.32.0".
	*/
	@:overload public function getValidPolicy() : String;
	
	/**
	* Returns the set of policy qualifiers associated with the
	* valid policy represented by this node.
	*
	* @return an immutable <code>Set</code> of
	* <code>PolicyQualifierInfo</code>s. For the root node, this
	* is always an empty <code>Set</code>.
	*/
	@:overload public function getPolicyQualifiers() : java.util.Set<java.security.cert.PolicyQualifierInfo>;
	
	/**
	* Returns the set of expected policies that would satisfy this
	* node's valid policy in the next certificate to be processed.
	*
	* @return an immutable <code>Set</code> of expected policy
	* <code>String</code> OIDs. For the root node, this method
	* always returns a <code>Set</code> with one element, the
	* special anyPolicy OID: "2.5.29.32.0".
	*/
	@:overload public function getExpectedPolicies() : java.util.Set<String>;
	
	/**
	* Returns the criticality indicator of the certificate policy extension
	* in the most recently processed certificate.
	*
	* @return <code>true</code> if extension marked critical,
	* <code>false</code> otherwise. For the root node, <code>false</code>
	* is always returned.
	*/
	@:overload public function isCritical() : Bool;
	
	
}
