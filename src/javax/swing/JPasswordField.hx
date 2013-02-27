package javax.swing;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class JPasswordField extends javax.swing.JTextField
{
	/**
	* Constructs a new <code>JPasswordField</code>,
	* with a default document, <code>null</code> starting
	* text string, and 0 column width.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new <code>JPasswordField</code> initialized
	* with the specified text.  The document model is set to the
	* default, and the number of columns to 0.
	*
	* @param text the text to be displayed, <code>null</code> if none
	*/
	@:overload public function new(text : String) : Void;
	
	/**
	* Constructs a new empty <code>JPasswordField</code> with the specified
	* number of columns.  A default model is created, and the initial string
	* is set to <code>null</code>.
	*
	* @param columns the number of columns >= 0
	*/
	@:overload public function new(columns : Int) : Void;
	
	/**
	* Constructs a new <code>JPasswordField</code> initialized with
	* the specified text and columns.  The document model is set to
	* the default.
	*
	* @param text the text to be displayed, <code>null</code> if none
	* @param columns the number of columns >= 0
	*/
	@:overload public function new(text : String, columns : Int) : Void;
	
	/**
	* Constructs a new <code>JPasswordField</code> that uses the
	* given text storage model and the given number of columns.
	* This is the constructor through which the other constructors feed.
	* The echo character is set to '*', but may be changed by the current
	* Look and Feel.  If the document model is
	* <code>null</code>, a default one will be created.
	*
	* @param doc  the text storage to use
	* @param txt the text to be displayed, <code>null</code> if none
	* @param columns  the number of columns to use to calculate
	*   the preferred width >= 0; if columns is set to zero, the
	*   preferred width will be whatever naturally results from
	*   the component implementation
	*/
	@:overload public function new(doc : javax.swing.text.Document, txt : String, columns : Int) : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "PasswordFieldUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override public function updateUI() : Void;
	
	/**
	* Returns the character to be used for echoing.  The default is '*'.
	* The default may be different depending on the currently running Look
	* and Feel. For example, Metal/Ocean's default is a bullet character.
	*
	* @return the echo character, 0 if unset
	* @see #setEchoChar
	* @see #echoCharIsSet
	*/
	@:overload public function getEchoChar() : java.StdTypes.Char16;
	
	/**
	* Sets the echo character for this <code>JPasswordField</code>.
	* Note that this is largely a suggestion, since the
	* view that gets installed can use whatever graphic techniques
	* it desires to represent the field.  Setting a value of 0 indicates
	* that you wish to see the text as it is typed, similar to
	* the behavior of a standard <code>JTextField</code>.
	*
	* @param c the echo character to display
	* @see #echoCharIsSet
	* @see #getEchoChar
	* @beaninfo
	* description: character to display in place of the real characters
	*   attribute: visualUpdate true
	*/
	@:overload public function setEchoChar(c : java.StdTypes.Char16) : Void;
	
	/**
	* Returns true if this <code>JPasswordField</code> has a character
	* set for echoing.  A character is considered to be set if the echo
	* character is not 0.
	*
	* @return true if a character is set for echoing
	* @see #setEchoChar
	* @see #getEchoChar
	*/
	@:overload public function echoCharIsSet() : Bool;
	
	/**
	* Invokes <code>provideErrorFeedback</code> on the current
	* look and feel, which typically initiates an error beep.
	* The normal behavior of transferring the
	* currently selected range in the associated text model
	* to the system clipboard, and removing the contents from
	* the model, is not acceptable for a password field.
	*/
	@:overload override public function cut() : Void;
	
	/**
	* Invokes <code>provideErrorFeedback</code> on the current
	* look and feel, which typically initiates an error beep.
	* The normal behavior of transferring the
	* currently selected range in the associated text model
	* to the system clipboard, and leaving the contents from
	* the model, is not acceptable for a password field.
	*/
	@:overload override public function copy() : Void;
	
	/**
	* Returns the text contained in this <code>TextComponent</code>.
	* If the underlying document is <code>null</code>, will give a
	* <code>NullPointerException</code>.
	* <p>
	* For security reasons, this method is deprecated.  Use the
	<code>* getPassword</code> method instead.
	* @deprecated As of Java 2 platform v1.2,
	* replaced by <code>getPassword</code>.
	* @return the text
	*/
	@:overload override public function getText() : String;
	
	/**
	* Fetches a portion of the text represented by the
	* component.  Returns an empty string if length is 0.
	* <p>
	* For security reasons, this method is deprecated.  Use the
	* <code>getPassword</code> method instead.
	* @deprecated As of Java 2 platform v1.2,
	* replaced by <code>getPassword</code>.
	* @param offs the offset >= 0
	* @param len the length >= 0
	* @return the text
	* @exception BadLocationException if the offset or length are invalid
	*/
	@:overload override public function getText(offs : Int, len : Int) : String;
	
	/**
	* Returns the text contained in this <code>TextComponent</code>.
	* If the underlying document is <code>null</code>, will give a
	* <code>NullPointerException</code>.  For stronger
	* security, it is recommended that the returned character array be
	* cleared after use by setting each character to zero.
	*
	* @return the text
	*/
	@:overload public function getPassword() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Returns a string representation of this <code>JPasswordField</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JPasswordField</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Returns the <code>AccessibleContext</code> associated with this
	* <code>JPasswordField</code>. For password fields, the
	* <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleJPasswordField</code>.
	* A new <code>AccessibleJPasswordField</code> instance is created
	* if necessary.
	*
	* @return an <code>AccessibleJPasswordField</code> that serves as the
	*         <code>AccessibleContext</code> of this
	*         <code>JPasswordField</code>
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JPasswordField</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to password field user-interface
* elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JPasswordField$AccessibleJPasswordField') extern class JPasswordField_AccessibleJPasswordField extends AccessibleJTextField
{
	/**
	* Gets the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	*   object (AccessibleRole.PASSWORD_TEXT)
	* @see AccessibleRole
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the <code>AccessibleText</code> for the <code>JPasswordField</code>.
	* The returned object also implements the
	* <code>AccessibleExtendedText</code> interface.
	*
	* @return <code>AccessibleText</code> for the JPasswordField
	* @see javax.accessibility.AccessibleContext
	* @see javax.accessibility.AccessibleContext#getAccessibleText
	* @see javax.accessibility.AccessibleText
	* @see javax.accessibility.AccessibleExtendedText
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Returns the <code>String</code> at a given <code>index</code>.
	*
	* @param part the <code>CHARACTER</code>, <code>WORD</code> or
	* <code>SENTENCE</code> to retrieve
	* @param index an index within the text
	* @return a <code>String</code> if <code>part</code> and
	* <code>index</code> are valid.
	* Otherwise, <code>null</code> is returned
	*
	* @see javax.accessibility.AccessibleText#CHARACTER
	* @see javax.accessibility.AccessibleText#WORD
	* @see javax.accessibility.AccessibleText#SENTENCE
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getAtIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the <code>String</code> after a given <code>index</code>.
	*
	* @param part the <code>CHARACTER</code>, <code>WORD</code> or
	* <code>SENTENCE</code> to retrieve
	* @param index an index within the text
	* @return a <code>String</code> if <code>part</code> and
	* <code>index</code> are valid.
	* Otherwise, <code>null</code> is returned
	*
	* @see javax.accessibility.AccessibleText#CHARACTER
	* @see javax.accessibility.AccessibleText#WORD
	* @see javax.accessibility.AccessibleText#SENTENCE
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getAfterIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the <code>String</code> before a given <code>index</code>.
	*
	* @param part the <code>CHARACTER</code>, <code>WORD</code> or
	* <code>SENTENCE</code> to retrieve
	* @param index an index within the text
	* @return a <code>String</code> if <code>part</code> and
	* <code>index</code> are valid.
	* Otherwise, <code>null</code> is returned
	*
	* @see javax.accessibility.AccessibleText#CHARACTER
	* @see javax.accessibility.AccessibleText#WORD
	* @see javax.accessibility.AccessibleText#SENTENCE
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getBeforeIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the text between two <code>indices</code>.
	*
	* @param startIndex the start index in the text
	* @param endIndex the end index in the text
	* @return the text string if the indices are valid.
	* Otherwise, <code>null</code> is returned
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getTextRange(startIndex : Int, endIndex : Int) : String;
	
	/**
	* Returns the <code>AccessibleTextSequence</code> at a given
	* <code>index</code>.
	*
	* @param part the <code>CHARACTER</code>, <code>WORD</code>,
	* <code>SENTENCE</code>, <code>LINE</code> or <code>ATTRIBUTE_RUN</code> to
	* retrieve
	* @param index an index within the text
	* @return an <code>AccessibleTextSequence</code> specifying the text if
	* <code>part</code> and <code>index</code> are valid.  Otherwise,
	* <code>null</code> is returned
	*
	* @see javax.accessibility.AccessibleText#CHARACTER
	* @see javax.accessibility.AccessibleText#WORD
	* @see javax.accessibility.AccessibleText#SENTENCE
	* @see javax.accessibility.AccessibleExtendedText#LINE
	* @see javax.accessibility.AccessibleExtendedText#ATTRIBUTE_RUN
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getTextSequenceAt(part : Int, index : Int) : javax.accessibility.AccessibleTextSequence;
	
	/**
	* Returns the <code>AccessibleTextSequence</code> after a given
	* <code>index</code>.
	*
	* @param part the <code>CHARACTER</code>, <code>WORD</code>,
	* <code>SENTENCE</code>, <code>LINE</code> or <code>ATTRIBUTE_RUN</code> to
	* retrieve
	* @param index an index within the text
	* @return an <code>AccessibleTextSequence</code> specifying the text if
	* <code>part</code> and <code>index</code> are valid.  Otherwise,
	* <code>null</code> is returned
	*
	* @see javax.accessibility.AccessibleText#CHARACTER
	* @see javax.accessibility.AccessibleText#WORD
	* @see javax.accessibility.AccessibleText#SENTENCE
	* @see javax.accessibility.AccessibleExtendedText#LINE
	* @see javax.accessibility.AccessibleExtendedText#ATTRIBUTE_RUN
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getTextSequenceAfter(part : Int, index : Int) : javax.accessibility.AccessibleTextSequence;
	
	/**
	* Returns the <code>AccessibleTextSequence</code> before a given
	* <code>index</code>.
	*
	* @param part the <code>CHARACTER</code>, <code>WORD</code>,
	* <code>SENTENCE</code>, <code>LINE</code> or <code>ATTRIBUTE_RUN</code> to
	* retrieve
	* @param index an index within the text
	* @return an <code>AccessibleTextSequence</code> specifying the text if
	* <code>part</code> and <code>index</code> are valid.  Otherwise,
	* <code>null</code> is returned
	*
	* @see javax.accessibility.AccessibleText#CHARACTER
	* @see javax.accessibility.AccessibleText#WORD
	* @see javax.accessibility.AccessibleText#SENTENCE
	* @see javax.accessibility.AccessibleExtendedText#LINE
	* @see javax.accessibility.AccessibleExtendedText#ATTRIBUTE_RUN
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getTextSequenceBefore(part : Int, index : Int) : javax.accessibility.AccessibleTextSequence;
	
	
}
