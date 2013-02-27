package javax.swing.text;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class GapContent extends javax.swing.text.GapVector implements javax.swing.text.AbstractDocument.AbstractDocument_Content implements java.io.Serializable
{
	/**
	* Creates a new GapContent object.  Initial size defaults to 10.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new GapContent object, with the initial
	* size specified.  The initial size will not be allowed
	* to go below 2, to give room for the implied break and
	* the gap.
	*
	* @param initialLength the initial size
	*/
	@:overload public function new(initialLength : Int) : Void;
	
	/**
	* Allocate an array to store items of the type
	* appropriate (which is determined by the subclass).
	*/
	@:overload override private function allocateArray(len : Int) : Dynamic;
	
	/**
	* Get the length of the allocated array.
	*/
	@:overload override private function getArrayLength() : Int;
	
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
	* @param where the starting position >= 0, < length()
	* @param str the non-null string to insert
	* @return an UndoableEdit object for undoing
	* @exception BadLocationException if the specified position is invalid
	* @see AbstractDocument.Content#insertString
	*/
	@:overload public function insertString(where : Int, str : String) : javax.swing.undo.UndoableEdit;
	
	/**
	* Removes part of the content.
	*
	* @param where the starting position >= 0, where + nitems < length()
	* @param nitems the number of characters to remove >= 0
	* @return an UndoableEdit object for undoing
	* @exception BadLocationException if the specified position is invalid
	* @see AbstractDocument.Content#remove
	*/
	@:overload public function remove(where : Int, nitems : Int) : javax.swing.undo.UndoableEdit;
	
	/**
	* Retrieves a portion of the content.
	*
	* @param where the starting position >= 0
	* @param len the length to retrieve >= 0
	* @return a string representing the content
	* @exception BadLocationException if the specified position is invalid
	* @see AbstractDocument.Content#getString
	*/
	@:overload public function getString(where : Int, len : Int) : String;
	
	/**
	* Retrieves a portion of the content.  If the desired content spans
	* the gap, we copy the content.  If the desired content does not
	* span the gap, the actual store is returned to avoid the copy since
	* it is contiguous.
	*
	* @param where the starting position >= 0, where + len <= length()
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
	* @param offset the offset to track >= 0
	* @return the position
	* @exception BadLocationException if the specified position is invalid
	*/
	@:overload public function createPosition(offset : Int) : javax.swing.text.Position;
	
	/**
	* Make the gap bigger, moving any necessary data and updating
	* the appropriate marks
	*/
	@:overload override private function shiftEnd(newSize : Int) : Void;
	
	/**
	* Move the start of the gap to a new location,
	* without changing the size of the gap.  This
	* moves the data in the array and updates the
	* marks accordingly.
	*/
	@:overload override private function shiftGap(newGapStart : Int) : Void;
	
	/**
	* Resets all the marks that have an offset of 0 to have an index of
	* zero as well.
	*/
	@:overload private function resetMarksAtZero() : Void;
	
	/**
	* Adjust the gap end downward.  This doesn't move
	* any data, but it does update any marks affected
	* by the boundary change.  All marks from the old
	* gap start down to the new gap start are squeezed
	* to the end of the gap (their location has been
	* removed).
	*/
	@:overload override private function shiftGapStartDown(newGapStart : Int) : Void;
	
	/**
	* Adjust the gap end upward.  This doesn't move
	* any data, but it does update any marks affected
	* by the boundary change. All marks from the old
	* gap end up to the new gap end are squeezed
	* to the end of the gap (their location has been
	* removed).
	*/
	@:overload override private function shiftGapEndUp(newGapEnd : Int) : Void;
	
	/**
	* Returns a Vector containing instances of UndoPosRef for the
	* Positions in the range
	* <code>offset</code> to <code>offset</code> + <code>length</code>.
	* If <code>v</code> is not null the matching Positions are placed in
	* there. The vector with the resulting Positions are returned.
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
	* @param positions the UndoPosRef instances to reset
	*/
	@:overload private function updateUndoPositions(positions : java.util.Vector<Dynamic>, offset : Int, length : Int) : Void;
	
	
}
/**
* Holds the data for a mark... separately from
* the real mark so that the real mark (Position
* that the caller of createPosition holds) can be
* collected if there are no more references to
* it.  The update table holds only a reference
* to this data.
*/
@:native('javax$swing$text$GapContent$MarkData') @:internal extern class GapContent_MarkData extends java.lang.ref.WeakReference<GapContent_StickyPosition>
{
	/**
	* Fetch the location in the contiguous sequence
	* being modeled.  The index in the gap array
	* is held by the mark, so it is adjusted according
	* to it's relationship to the gap.
	*/
	@:overload @:final public function getOffset() : Int;
	
	
}
@:native('javax$swing$text$GapContent$StickyPosition') @:internal extern class GapContent_StickyPosition implements javax.swing.text.Position
{
	@:overload @:final public function getOffset() : Int;
	
	@:overload public function toString() : String;
	
	
}
@:native('javax$swing$text$GapContent$MarkVector') @:internal extern class GapContent_MarkVector extends javax.swing.text.GapVector
{
	/**
	* Allocate an array to store items of the type
	* appropriate (which is determined by the subclass).
	*/
	@:overload override private function allocateArray(len : Int) : Dynamic;
	
	/**
	* Get the length of the allocated array
	*/
	@:overload override private function getArrayLength() : Int;
	
	/**
	* Returns the number of marks currently held
	*/
	@:overload public function size() : Int;
	
	/**
	* Inserts a mark into the vector
	*/
	@:overload public function insertElementAt(m : GapContent_MarkData, index : Int) : Void;
	
	/**
	* Add a mark to the end
	*/
	@:overload public function addElement(m : GapContent_MarkData) : Void;
	
	/**
	* Fetches the mark at the given index
	*/
	@:overload public function elementAt(index : Int) : GapContent_MarkData;
	
	/**
	* Replaces the elements in the specified range with the passed
	* in objects. This will NOT adjust the gap. The passed in indices
	* do not account for the gap, they are the same as would be used
	* int <code>elementAt</code>.
	*/
	@:overload private function replaceRange(start : Int, end : Int, marks : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* Used to hold a reference to a Mark that is being reset as the
* result of removing from the content.
*/
@:native('javax$swing$text$GapContent$UndoPosRef') @:internal extern class GapContent_UndoPosRef
{
	/**
	* Resets the location of the Position to the offset when the
	* receiver was instantiated.
	*
	* @param endOffset end location of inserted string.
	* @param g1 resulting end of gap.
	*/
	@:overload private function resetLocation(endOffset : Int, g1 : Int) : Void;
	
	/** Previous Offset of rec. */
	private var undoLocation : Int;
	
	/** Mark to reset offset. */
	private var rec : GapContent_MarkData;
	
	
}
/**
* UnoableEdit created for inserts.
*/
@:native('javax$swing$text$GapContent$InsertUndo') @:internal extern class GapContent_InsertUndo extends javax.swing.undo.AbstractUndoableEdit
{
	@:overload private function new(offset : Int, length : Int) : Void;
	
	@:overload override public function undo() : Void;
	
	@:overload override public function redo() : Void;
	
	/** Where string was inserted. */
	private var offset : Int;
	
	/** Length of string inserted. */
	private var length : Int;
	
	/** The string that was inserted. This will only be valid after an
	* undo. */
	private var string : String;
	
	/** An array of instances of UndoPosRef for the Positions in the
	* range that was removed, valid after undo. */
	private var posRefs : java.util.Vector<Dynamic>;
	
	
}
/**
* UndoableEdit created for removes.
*/
@:native('javax$swing$text$GapContent$RemoveUndo') @:internal extern class GapContent_RemoveUndo extends javax.swing.undo.AbstractUndoableEdit
{
	@:overload private function new(offset : Int, string : String) : Void;
	
	@:overload override public function undo() : Void;
	
	@:overload override public function redo() : Void;
	
	/** Where the string was removed from. */
	private var offset : Int;
	
	/** Length of string removed. */
	private var length : Int;
	
	/** The string that was removed. This is valid when redo is valid. */
	private var string : String;
	
	/** An array of instances of UndoPosRef for the Positions in the
	* range that was removed, valid before undo. */
	private var posRefs : java.util.Vector<Dynamic>;
	
	
}
