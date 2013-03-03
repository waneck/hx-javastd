package org.w3c.dom.stylesheets;
/*
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
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2000 World Wide Web Consortium,
* (Massachusetts Institute of Technology, Institut National de
* Recherche en Informatique et en Automatique, Keio University). All
* Rights Reserved. This program is distributed under the W3C's Software
* Intellectual Property License. This program is distributed in the
* hope that it will be useful, but WITHOUT ANY WARRANTY; without even
* the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
* PURPOSE.
* See W3C License http://www.w3.org/Consortium/Legal/ for more details.
*/
extern interface MediaList
{
	/**
	*  The parsable textual representation of the media list. This is a
	* comma-separated list of media.
	*/
	@:overload @:public public function getMediaText() : String;
	
	/**
	*  The parsable textual representation of the media list. This is a
	* comma-separated list of media.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the specified string value has a syntax error
	*   and is unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this media list is
	*   readonly.
	*/
	@:overload @:public public function setMediaText(mediaText : String) : Void;
	
	/**
	*  The number of media in the list. The range of valid media is
	* <code>0</code> to <code>length-1</code> inclusive.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	*  Returns the <code>index</code>th in the list. If <code>index</code> is
	* greater than or equal to the number of media in the list, this
	* returns <code>null</code>.
	* @param index  Index into the collection.
	* @return  The medium at the <code>index</code>th position in the
	*   <code>MediaList</code>, or <code>null</code> if that is not a valid
	*   index.
	*/
	@:overload @:public public function item(index : Int) : String;
	
	/**
	*  Deletes the medium indicated by <code>oldMedium</code> from the list.
	* @param oldMedium The medium to delete in the media list.
	* @exception DOMException
	*    NO_MODIFICATION_ALLOWED_ERR: Raised if this list is readonly.
	*   <br> NOT_FOUND_ERR: Raised if <code>oldMedium</code> is not in the
	*   list.
	*/
	@:overload @:public public function deleteMedium(oldMedium : String) : Void;
	
	/**
	*  Adds the medium <code>newMedium</code> to the end of the list. If the
	* <code>newMedium</code> is already used, it is first removed.
	* @param newMedium The new medium to add.
	* @exception DOMException
	*    INVALID_CHARACTER_ERR: If the medium contains characters that are
	*   invalid in the underlying style language.
	*   <br> NO_MODIFICATION_ALLOWED_ERR: Raised if this list is readonly.
	*/
	@:overload @:public public function appendMedium(newMedium : String) : Void;
	
	
}
