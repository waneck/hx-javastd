package javax.swing.text;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class StringContent implements javax.swing.text.AbstractDocument.AbstractDocument_Content implements java.io.Serializable
{
	/**
	* Creates a new StringContent object.  Initial size defaults to 10.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new StringContent object, with the initial
	* size specified.  If the length is < 1, a size of 1 is used.
	*
	* @param initialLength the initial size
	*/
	@:overload public function new(initialLength : Int) : Void;
	
	/**
	* Returns the length of the content.
	*
	* @return the length >= 1
	* @see AbstractDocument.Content#length
	*/
	@:overload public function length() : Int;
	
	/**
	* Inserts a string into the content.
	*
	* @param where the starting position >= 0 && < length()
	* @param str the non-null string to insert
	* @return an UndoableEdit object for undoing
	* @exception BadLocationException if the specified position is invalid
	* @see AbstractDocument.Content#insertString
	*/
	@:overload public function insertString(where : Int, str : String) : javax.swing.undo.UndoableEdit;
	
	/**
	* Removes part of the content.  where + nitems must be < length().
	*
	* @param where the starting position >= 0
	* @param nitems the number of characters to remove >= 0
	* @return an UndoableEdit object for undoing
	* @exception BadLocationException if the specified position is invalid
	* @see AbstractDocument.Content#remove
	*/
	@:overload public function remove(where : Int, nitems : Int) : javax.swing.undo.UndoableEdit;
	
	/**
	* Retrieves a portion of the content.  where + len must be <= length().
	*
	* @param where the starting position >= 0
	* @param len the length to retrieve >= 0
	* @return a string representing the content; may be empty
	* @exception BadLocationException if the specified position is invalid
	* @see AbstractDocument.Content#getString
	*/
	@:overload public function getString(where : Int, len : Int) : String;
	
	/**
	* Retrieves a portion of the content.  where + len must be <= length()
	*
	* @param where the starting position >= 0
	* @param len the number of characters to retrieve >= 0
	* @param chars the Segment object to return the characters in
	* @exception BadLocationException if the specified position is invalid
	* @see AbstractDocument.Content#getChars
	*/
	@:overload public function getChars(where : Int, len : Int, chars : javax.swing.text.Segment) : Void;
	
	/**
	* Creates a position within the content that will
	* track change as the content is mutated.
	*
	* @param offset the offset to create a position for >= 0
	* @return the position
	* @exception BadLocationException if the specified position is invalid
	*/
	@:overload public function createPosition(offset : Int) : javax.swing.text.Position;
	
	/**
	* Returns a Vector containing instances of UndoPosRef for the
	* Positions in the range
	* <code>offset</code> to <code>offset</code> + <code>length</code>.
	* If <code>v</code> is not null the matching Positions are placed in
	* there. The vector with the resulting Positions are returned.
	* <p>
	* This is meant for internal usage, and is generally not of interest
	* to subclasses.
	*
	* @param v the Vector to use, with a new one created on null
	* @param offset the starting offset >= 0
	* @param length the length >= 0
	* @return the set of instances
	*/
	@:overload private function getPositionsInRange(v : java.util.Vector<Dynamic>, offset : Int, length : Int) : java.util.Vector<Dynamic>;
	
	/**
	* Resets the location for all the UndoPosRef instances
	* in <code>positions</code>.
	* <p>
	* This is meant for internal usage, and is generally not of interest
	* to subclasses.
	*
	* @param positions the positions of the instances
	*/
	@:overload private function updateUndoPositions(positions : java.util.Vector<Dynamic>) : Void;
	
	
}
/**
* holds the data for a mark... separately from
* the real mark so that the real mark can be
* collected if there are no more references to
* it.... the update table holds only a reference
* to this grungy thing.
*/
@:native('javax$swing$text$StringContent$PosRec') @:internal extern class StringContent_PosRec
{
	
}
/**
* This really wants to be a weak reference but
* in 1.1 we don't have a 100% pure solution for
* this... so this class trys to hack a solution
* to causing the marks to be collected.
*/
@:native('javax$swing$text$StringContent$StickyPosition') @:internal extern class StringContent_StickyPosition implements javax.swing.text.Position
{
	@:overload public function getOffset() : Int;
	
	@:overload private function finalize() : Void;
	
	@:overload public function toString() : String;
	
	
}
/**
* Used to hold a reference to a Position that is being reset as the
* result of removing from the content.
*/
@:native('javax$swing$text$StringContent$UndoPosRef') @:internal extern class StringContent_UndoPosRef
{
	/**
	* Resets the location of the Position to the offset when the
	* receiver was instantiated.
	*/
	@:overload private function resetLocation() : Void;
	
	/** Location to reset to when resetLocatino is invoked. */
	private var undoLocation : Int;
	
	/** Position to reset offset. */
	private var rec : javax.swing.text.StringContent.StringContent_PosRec;
	
	
}
/**
* UnoableEdit created for inserts.
*/
@:native('javax$swing$text$StringContent$InsertUndo') @:internal extern class StringContent_InsertUndo extends javax.swing.undo.AbstractUndoableEdit
{
	@:overload private function new(offset : Int, length : Int) : Void;
	
	@:overload public function undo() : Void;
	
	@:overload public function redo() : Void;
	
	private var offset : Int;
	
	private var length : Int;
	
	private var string : String;
	
	private var posRefs : java.util.Vector<Dynamic>;
	
	
}
/**
* UndoableEdit created for removes.
*/
@:native('javax$swing$text$StringContent$RemoveUndo') @:internal extern class StringContent_RemoveUndo extends javax.swing.undo.AbstractUndoableEdit
{
	@:overload private function new(offset : Int, string : String) : Void;
	
	@:overload public function undo() : Void;
	
	@:overload public function redo() : Void;
	
	private var offset : Int;
	
	private var length : Int;
	
	private var string : String;
	
	private var posRefs : java.util.Vector<Dynamic>;
	
	
}
