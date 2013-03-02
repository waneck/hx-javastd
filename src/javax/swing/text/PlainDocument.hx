package javax.swing.text;
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
extern class PlainDocument extends javax.swing.text.AbstractDocument
{
	/**
	* Name of the attribute that specifies the tab
	* size for tabs contained in the content.  The
	* type for the value is Integer.
	*/
	public static var tabSizeAttribute(default, null) : String;
	
	/**
	* Name of the attribute that specifies the maximum
	* length of a line, if there is a maximum length.
	* The type for the value is Integer.
	*/
	public static var lineLimitAttribute(default, null) : String;
	
	/**
	* Constructs a plain text document.  A default model using
	* <code>GapContent</code> is constructed and set.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a plain text document.  A default root element is created,
	* and the tab size set to 8.
	*
	* @param c  the container for the content
	*/
	@:overload public function new(c : javax.swing.text.AbstractDocument.AbstractDocument_Content) : Void;
	
	/**
	* Inserts some content into the document.
	* Inserting content causes a write lock to be held while the
	* actual changes are taking place, followed by notification
	* to the observers on the thread that grabbed the write lock.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param offs the starting offset >= 0
	* @param str the string to insert; does nothing with null/empty strings
	* @param a the attributes for the inserted content
	* @exception BadLocationException  the given insert position is not a valid
	*   position within the document
	* @see Document#insertString
	*/
	@:overload override public function insertString(offs : Int, str : String, a : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Gets the default root element for the document model.
	*
	* @return the root
	* @see Document#getDefaultRootElement
	*/
	@:overload override public function getDefaultRootElement() : javax.swing.text.Element;
	
	/**
	* Creates the root element to be used to represent the
	* default document structure.
	*
	* @return the element base
	*/
	@:overload private function createDefaultRoot() : javax.swing.text.AbstractDocument.AbstractDocument_AbstractElement;
	
	/**
	* Get the paragraph element containing the given position.  Since this
	* document only models lines, it returns the line instead.
	*/
	@:overload override public function getParagraphElement(pos : Int) : javax.swing.text.Element;
	
	/**
	* Updates document structure as a result of text insertion.  This
	* will happen within a write lock.  Since this document simply
	* maps out lines, we refresh the line map.
	*
	* @param chng the change event describing the dit
	* @param attr the set of attributes for the inserted text
	*/
	@:overload override private function insertUpdate(chng : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent, attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Updates any document structure as a result of text removal.
	* This will happen within a write lock. Since the structure
	* represents a line map, this just checks to see if the
	* removal spans lines.  If it does, the two lines outside
	* of the removal area are joined together.
	*
	* @param chng the change event describing the edit
	*/
	@:overload override private function removeUpdate(chng : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent) : Void;
	
	
}
