package java.awt;
/*
* Copyright (c) 1995, 2008, Oracle and/or its affiliates. All rights reserved.
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
* A <code>Label</code> object is a component for placing text in a
* container. A label displays a single line of read-only text.
* The text can be changed by the application, but a user cannot edit it
* directly.
* <p>
* For example, the code&nbsp;.&nbsp;.&nbsp;.
* <p>
* <hr><blockquote><pre>
* setLayout(new FlowLayout(FlowLayout.CENTER, 10, 10));
* add(new Label("Hi There!"));
* add(new Label("Another Label"));
* </pre></blockquote><hr>
* <p>
* produces the following labels:
* <p>
* <img src="doc-files/Label-1.gif" alt="Two labels: 'Hi There!' and 'Another label'"
* ALIGN=center HSPACE=10 VSPACE=7>
*
* @author      Sami Shaio
* @since       JDK1.0
*/
@:require(java0) extern class Label extends java.awt.Component implements javax.accessibility.Accessible
{
	/**
	* Indicates that the label should be left justified.
	*/
	public static var LEFT(default, null) : Int;
	
	/**
	* Indicates that the label should be centered.
	*/
	public static var CENTER(default, null) : Int;
	
	/**
	* Indicates that the label should be right justified.
	* @since   JDK1.0t.
	*/
	@:require(java0) public static var RIGHT(default, null) : Int;
	
	/**
	* Constructs an empty label.
	* The text of the label is the empty string <code>""</code>.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new label with the specified string of text,
	* left justified.
	* @param text the string that the label presents.
	*        A <code>null</code> value
	*        will be accepted without causing a NullPointerException
	*        to be thrown.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(text : String) : Void;
	
	/**
	* Constructs a new label that presents the specified string of
	* text with the specified alignment.
	* Possible values for <code>alignment</code> are <code>Label.LEFT</code>,
	* <code>Label.RIGHT</code>, and <code>Label.CENTER</code>.
	* @param text the string that the label presents.
	*        A <code>null</code> value
	*        will be accepted without causing a NullPointerException
	*        to be thrown.
	* @param     alignment   the alignment value.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(text : String, alignment : Int) : Void;
	
	/**
	* Creates the peer for this label.  The peer allows us to
	* modify the appearance of the label without changing its
	* functionality.
	*/
	@:overload public function addNotify() : Void;
	
	/**
	* Gets the current alignment of this label. Possible values are
	* <code>Label.LEFT</code>, <code>Label.RIGHT</code>, and
	* <code>Label.CENTER</code>.
	* @see        java.awt.Label#setAlignment
	*/
	@:overload public function getAlignment() : Int;
	
	/**
	* Sets the alignment for this label to the specified alignment.
	* Possible values are <code>Label.LEFT</code>,
	* <code>Label.RIGHT</code>, and <code>Label.CENTER</code>.
	* @param      alignment    the alignment to be set.
	* @exception  IllegalArgumentException if an improper value for
	*                          <code>alignment</code> is given.
	* @see        java.awt.Label#getAlignment
	*/
	@:overload @:synchronized public function setAlignment(alignment : Int) : Void;
	
	/**
	* Gets the text of this label.
	* @return     the text of this label, or <code>null</code> if
	*             the text has been set to <code>null</code>.
	* @see        java.awt.Label#setText
	*/
	@:overload public function getText() : String;
	
	/**
	* Sets the text for this label to the specified text.
	* @param      text the text that this label displays. If
	*             <code>text</code> is <code>null</code>, it is
	*             treated for display purposes like an empty
	*             string <code>""</code>.
	* @see        java.awt.Label#getText
	*/
	@:overload public function setText(text : String) : Void;
	
	/**
	* Returns a string representing the state of this <code>Label</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return     the parameter string of this label
	*/
	@:overload private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this Label.
	* For labels, the AccessibleContext takes the form of an
	* AccessibleAWTLabel.
	* A new AccessibleAWTLabel instance is created if necessary.
	*
	* @return an AccessibleAWTLabel that serves as the
	*         AccessibleContext of this Label
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>Label</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to label user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$Label$AccessibleAWTLabel') extern class Label_AccessibleAWTLabel extends java.awt.Component.Component_AccessibleAWTComponent
{
	@:overload public function new() : Void;
	
	/**
	* Get the accessible name of this object.
	*
	* @return the localized name of the object -- can be null if this
	* object does not have a name
	* @see AccessibleContext#setAccessibleName
	*/
	@:overload public function getAccessibleName() : String;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
