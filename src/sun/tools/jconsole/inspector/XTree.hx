package sun.tools.jconsole.inspector;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XTree extends javax.swing.JTree
{
	@:overload public function new(mbeansTab : sun.tools.jconsole.MBeansTab) : Void;
	
	@:overload public function new(root : javax.swing.tree.TreeNode, mbeansTab : sun.tools.jconsole.MBeansTab) : Void;
	
	/**
	* This method removes all the displayed nodes from the tree,
	* but does not affect actual MBeanServer contents.
	*/
	@:overload @:synchronized override public function removeAll() : Void;
	
	@:overload @:synchronized public function removeMBeanFromView(mbean : javax.management.ObjectName) : Void;
	
	/**
	* Returns true if any of the children nodes is an MBean metadata node.
	*/
	@:overload public function hasMetadataNodes(node : javax.swing.tree.DefaultMutableTreeNode) : Bool;
	
	/**
	* Returns true if the given node is an MBean metadata node.
	*/
	@:overload public function isMetadataNode(node : javax.swing.tree.DefaultMutableTreeNode) : Bool;
	
	@:overload @:synchronized public function addMBeansToView(mbeans : java.util.Set<javax.management.ObjectName>) : Void;
	
	@:overload @:synchronized public function addMBeanToView(mbean : javax.management.ObjectName) : Void;
	
	@:overload public function addMetadataNodes(node : javax.swing.tree.DefaultMutableTreeNode) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XTree$MBeanInfoNodesSwingWorker') @:internal extern class XTree_MBeanInfoNodesSwingWorker extends javax.swing.SwingWorker<java.NativeArray<Dynamic>, java.lang.Void>
{
	@:overload public function new(model : javax.swing.tree.DefaultTreeModel, node : javax.swing.tree.DefaultMutableTreeNode, mbean : sun.tools.jconsole.inspector.XMBean) : Void;
	
	@:overload override public function doInBackground() : java.NativeArray<Dynamic>;
	
	@:overload override private function done() : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XTree$ComparableDefaultMutableTreeNode') @:internal extern class XTree_ComparableDefaultMutableTreeNode extends javax.swing.tree.DefaultMutableTreeNode implements java.lang.Comparable<javax.swing.tree.DefaultMutableTreeNode>
{
	@:overload public function compareTo(node : javax.swing.tree.DefaultMutableTreeNode) : Int;
	
	
}
@:native('sun$tools$jconsole$inspector$XTree$Dn') @:internal extern class XTree_Dn implements java.lang.Comparable<XTree_Dn>
{
	@:overload public function new(mbean : javax.management.ObjectName) : Void;
	
	@:overload public function getObjectName() : javax.management.ObjectName;
	
	@:overload public function getDomain() : String;
	
	@:overload public function getKeyPropertyList() : String;
	
	@:overload public function getToken(index : Int) : XTree_Token;
	
	@:overload public function getTokenCount() : Int;
	
	@:overload public function getHashDn() : String;
	
	@:overload public function getHashKey(token : XTree_Token) : String;
	
	@:overload public function toString() : String;
	
	@:overload public function compareTo(dn : XTree_Dn) : Int;
	
	
}
@:native('sun$tools$jconsole$inspector$XTree$Token') @:internal extern class XTree_Token
{
	@:overload public function new(tokenType : String, tokenValue : String) : Void;
	
	@:overload public function getTokenType() : String;
	
	@:overload public function getTokenValue() : String;
	
	@:overload public function getKey() : String;
	
	@:overload public function getValue() : String;
	
	
}
