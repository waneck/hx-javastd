package javax.accessibility;
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
* <P>The AccessibleEditableText interface should be implemented by all
* classes that present editable textual information on the display.
* Along with the AccessibleText interface, this interface provides
* the standard mechanism for an assistive technology to access
* that text via its content, attributes, and spatial location.
* Applications can determine if an object supports the AccessibleEditableText
* interface by first obtaining its AccessibleContext (see {@link Accessible})
* and then calling the {@link AccessibleContext#getAccessibleEditableText}
* method of AccessibleContext.  If the return value is not null, the object
* supports this interface.
*
* @see Accessible
* @see Accessible#getAccessibleContext
* @see AccessibleContext
* @see AccessibleContext#getAccessibleText
* @see AccessibleContext#getAccessibleEditableText
*
* @author      Lynn Monsanto
* @since 1.4
*/
@:require(java4) extern interface AccessibleEditableText extends javax.accessibility.AccessibleText
{
	/**
	* Sets the text contents to the specified string.
	*
	* @param s the string to set the text contents
	*/
	@:overload @:public public function setTextContents(s : String) : Void;
	
	/**
	* Inserts the specified string at the given index/
	*
	* @param index the index in the text where the string will
	* be inserted
	* @param s the string to insert in the text
	*/
	@:overload @:public public function insertTextAtIndex(index : Int, s : String) : Void;
	
	/**
	* Returns the text string between two indices.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	* @return the text string between the indices
	*/
	@:overload @:public public function getTextRange(startIndex : Int, endIndex : Int) : String;
	
	/**
	* Deletes the text between two indices
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	*/
	@:overload @:public public function delete(startIndex : Int, endIndex : Int) : Void;
	
	/**
	* Cuts the text between two indices into the system clipboard.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	*/
	@:overload @:public public function cut(startIndex : Int, endIndex : Int) : Void;
	
	/**
	* Pastes the text from the system clipboard into the text
	* starting at the specified index.
	*
	* @param startIndex the starting index in the text
	*/
	@:overload @:public public function paste(startIndex : Int) : Void;
	
	/**
	* Replaces the text between two indices with the specified
	* string.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	* @param s the string to replace the text between two indices
	*/
	@:overload @:public public function replaceText(startIndex : Int, endIndex : Int, s : String) : Void;
	
	/**
	* Selects the text between two indices.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	*/
	@:overload @:public public function selectText(startIndex : Int, endIndex : Int) : Void;
	
	/**
	* Sets attributes for the text between two indices.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	* @param as the attribute set
	* @see AttributeSet
	*/
	@:overload @:public public function setAttributes(startIndex : Int, endIndex : Int, as : javax.swing.text.AttributeSet) : Void;
	
	
}
