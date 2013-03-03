package com.sun.xml.internal.xsom.impl.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SchemaTreeTraverser implements com.sun.xml.internal.xsom.visitor.XSVisitor implements com.sun.xml.internal.xsom.visitor.XSSimpleTypeVisitor
{
	/**
	* Simple constructor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Retrieves the tree model of <code>this</code> traverser.
	*
	* @return Tree model of <code>this</code> traverser.
	*/
	@:overload @:public public function getModel() : com.sun.xml.internal.xsom.impl.util.SchemaTreeTraverser.SchemaTreeTraverser_SchemaTreeModel;
	
	/**
	* Visits the root schema set.
	*
	* @param s Root schema set.
	*/
	@:overload @:public public function visit(s : com.sun.xml.internal.xsom.XSSchemaSet) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#schema(com.sun.xml.internal.xsom.XSSchema)
	*/
	@:overload @:public public function schema(s : com.sun.xml.internal.xsom.XSSchema) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#attGroupDecl(com.sun.xml.internal.xsom.XSAttGroupDecl)
	*/
	@:overload @:public public function attGroupDecl(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : Void;
	
	/**
	* Creates node of attribute group decalration reference.
	*
	* @param decl Attribute group decalration reference.
	*/
	@:overload @:public public function dumpRef(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#attributeUse(com.sun.xml.internal.xsom.XSAttributeUse)
	*/
	@:overload @:public public function attributeUse(use : com.sun.xml.internal.xsom.XSAttributeUse) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#attributeDecl(com.sun.xml.internal.xsom.XSAttributeDecl)
	*/
	@:overload @:public public function attributeDecl(decl : com.sun.xml.internal.xsom.XSAttributeDecl) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSContentTypeVisitor#simpleType(com.sun.xml.internal.xsom.XSSimpleType)
	*/
	@:overload @:public public function simpleType(type : com.sun.xml.internal.xsom.XSSimpleType) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSSimpleTypeVisitor#listSimpleType(com.sun.xml.internal.xsom.XSListSimpleType)
	*/
	@:overload @:public public function listSimpleType(type : com.sun.xml.internal.xsom.XSListSimpleType) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSSimpleTypeVisitor#unionSimpleType(com.sun.xml.internal.xsom.XSUnionSimpleType)
	*/
	@:overload @:public public function unionSimpleType(type : com.sun.xml.internal.xsom.XSUnionSimpleType) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSSimpleTypeVisitor#restrictionSimpleType(com.sun.xml.internal.xsom.XSRestrictionSimpleType)
	*/
	@:overload @:public public function restrictionSimpleType(type : com.sun.xml.internal.xsom.XSRestrictionSimpleType) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#facet(com.sun.xml.internal.xsom.XSFacet)
	*/
	@:overload @:public public function facet(facet : com.sun.xml.internal.xsom.XSFacet) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#notation(com.sun.xml.internal.xsom.XSNotation)
	*/
	@:overload @:public public function notation(notation : com.sun.xml.internal.xsom.XSNotation) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#complexType(com.sun.xml.internal.xsom.XSComplexType)
	*/
	@:overload @:public public function complexType(type : com.sun.xml.internal.xsom.XSComplexType) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSTermVisitor#elementDecl(com.sun.xml.internal.xsom.XSElementDecl)
	*/
	@:overload @:public public function elementDecl(decl : com.sun.xml.internal.xsom.XSElementDecl) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSTermVisitor#modelGroupDecl(com.sun.xml.internal.xsom.XSModelGroupDecl)
	*/
	@:overload @:public public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSTermVisitor#modelGroup(com.sun.xml.internal.xsom.XSModelGroup)
	*/
	@:overload @:public public function modelGroup(group : com.sun.xml.internal.xsom.XSModelGroup) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSContentTypeVisitor#particle(com.sun.xml.internal.xsom.XSParticle)
	*/
	@:overload @:public public function particle(part : com.sun.xml.internal.xsom.XSParticle) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSTermVisitor#wildcard(com.sun.xml.internal.xsom.XSWildcard)
	*/
	@:overload @:public public function wildcard(wc : com.sun.xml.internal.xsom.XSWildcard) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#annotation(com.sun.xml.internal.xsom.XSAnnotation)
	*/
	@:overload @:public public function annotation(ann : com.sun.xml.internal.xsom.XSAnnotation) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSContentTypeVisitor#empty(com.sun.xml.internal.xsom.XSContentType)
	*/
	@:overload @:public public function empty(t : com.sun.xml.internal.xsom.XSContentType) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#identityConstraint(com.sun.xml.internal.xsom.XSIdentityConstraint)
	*/
	@:overload @:public public function identityConstraint(ic : com.sun.xml.internal.xsom.XSIdentityConstraint) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.xml.internal.xsom.visitor.XSVisitor#xpath(com.sun.xml.internal.xsom.XSXPath)
	*/
	@:overload @:public public function xpath(xp : com.sun.xml.internal.xsom.XSXPath) : Void;
	
	
}
/**
* Tree model for schema hierarchy tree.
*
* @author Kirill Grouchnikov
*/
@:native('com$sun$xml$internal$xsom$impl$util$SchemaTreeTraverser$SchemaTreeModel') extern class SchemaTreeTraverser_SchemaTreeModel extends javax.swing.tree.DefaultTreeModel
{
	/**
	* A factory method for creating a new empty tree.
	*
	* @return New empty tree model.
	*/
	@:overload @:public @:static public static function getInstance() : com.sun.xml.internal.xsom.impl.util.SchemaTreeTraverser.SchemaTreeTraverser_SchemaTreeModel;
	
	@:overload @:public public function addSchemaNode(node : com.sun.xml.internal.xsom.impl.util.SchemaTreeTraverser.SchemaTreeTraverser_SchemaTreeNode) : Void;
	
	
}
/**
* The node of the schema hierarchy tree.
*
* @author Kirill Grouchnikov
*/
@:native('com$sun$xml$internal$xsom$impl$util$SchemaTreeTraverser$SchemaTreeNode') extern class SchemaTreeTraverser_SchemaTreeNode extends javax.swing.tree.DefaultMutableTreeNode
{
	/**
	* Simple constructor.
	*
	* @param artifactName Artifact name.
	* @param locator      Artifact locator.
	*/
	@:overload @:public public function new(artifactName : String, locator : org.xml.sax.Locator) : Void;
	
	/**
	* Returns the caption for <code>this</code> node.
	*
	* @return The caption for <code>this</code> node.
	*/
	@:overload @:public public function getCaption() : String;
	
	/**
	* @return Returns the file name of the corresponding schema artifact.
	*/
	@:overload @:public public function getFileName() : String;
	
	/**
	* @param fileName The file name of the corresponding schema artifact to
	*                 set.
	*/
	@:overload @:public public function setFileName(fileName : String) : Void;
	
	/**
	* @return Returns the line number of the corresponding schema
	*         artifact.
	*/
	@:overload @:public public function getLineNumber() : Int;
	
	/**
	* @param lineNumber The line number of the corresponding schema
	*                   artifact to set.
	*/
	@:overload @:public public function setLineNumber(lineNumber : Int) : Void;
	
	
}
/**
* The root node of the schema hierarchy tree.
*
* @author Kirill Grouchnikov
*/
@:native('com$sun$xml$internal$xsom$impl$util$SchemaTreeTraverser$SchemaRootNode') extern class SchemaTreeTraverser_SchemaRootNode extends com.sun.xml.internal.xsom.impl.util.SchemaTreeTraverser.SchemaTreeTraverser_SchemaTreeNode
{
	/**
	* A simple constructor.
	*/
	@:overload @:public public function new() : Void;
	
	
}
/**
* Sample cell renderer for the schema tree.
*
* @author Kirill Grouchnikov
*/
@:native('com$sun$xml$internal$xsom$impl$util$SchemaTreeTraverser$SchemaTreeCellRenderer') extern class SchemaTreeTraverser_SchemaTreeCellRenderer extends javax.swing.JPanel implements javax.swing.tree.TreeCellRenderer
{
	/**
	* The icon label.
	*/
	@:protected @:final private var iconLabel(default, null) : javax.swing.JLabel;
	
	/**
	* The text label
	*/
	@:protected @:final private var nameLabel(default, null) : javax.swing.JLabel;
	
	/**
	* Background color for selected cells (light brown).
	*/
	@:public @:final public var selectedBackground(default, null) : java.awt.Color;
	
	/**
	* Foreground color for selected cells, both text and border (dark
	* brown).
	*/
	@:public @:final public var selectedForeground(default, null) : java.awt.Color;
	
	/**
	* Default font for the text label.
	*/
	@:public @:final public var nameFont(default, null) : java.awt.Font;
	
	/**
	* Simple constructor.
	*/
	@:overload @:public public function new() : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see javax.swing.JComponent#paintComponent(java.awt.Graphics)
	*/
	@:overload @:public @:final override public function paintComponent(g : java.awt.Graphics) : Void;
	
	/**
	* Sets values for the icon and text of <code>this</code> renderer.
	*
	* @param icon     Icon to show.
	* @param caption  Text to show.
	* @param selected Selection indicator. If <code>true</code>, the
	*                 renderer will be shown with different background and
	*                 border settings.
	*/
	@:overload @:protected @:final private function setValues(icon : javax.swing.Icon, caption : String, selected : Bool) : Void;
	
	/* (non-Javadoc)
	* @see javax.swing.tree.TreeCellRenderer#getTreeCellRendererComponent(javax.swing.JTree, java.lang.Object, boolean, boolean, boolean, int, boolean)
	*/
	@:overload @:public @:final public function getTreeCellRendererComponent(tree : javax.swing.JTree, value : Dynamic, selected : Bool, expanded : Bool, leaf : Bool, row : Int, hasFocus : Bool) : java.awt.Component;
	
	
}
