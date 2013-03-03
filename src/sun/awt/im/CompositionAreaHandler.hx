package sun.awt.im;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CompositionAreaHandler implements java.awt.event.InputMethodListener implements java.awt.im.InputMethodRequests
{
	@:overload @:public public function inputMethodTextChanged(event : java.awt.event.InputMethodEvent) : Void;
	
	@:overload @:public public function caretPositionChanged(event : java.awt.event.InputMethodEvent) : Void;
	
	@:overload @:public public function getTextLocation(offset : java.awt.font.TextHitInfo) : java.awt.Rectangle;
	
	@:overload @:public public function getLocationOffset(x : Int, y : Int) : java.awt.font.TextHitInfo;
	
	@:overload @:public public function getInsertPositionOffset() : Int;
	
	@:overload @:public public function getCommittedText(beginIndex : Int, endIndex : Int, attributes : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : java.text.AttributedCharacterIterator;
	
	@:overload @:public public function getCommittedTextLength() : Int;
	
	@:overload @:public public function cancelLatestCommittedText(attributes : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : java.text.AttributedCharacterIterator;
	
	@:overload @:public public function getSelectedText(attributes : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : java.text.AttributedCharacterIterator;
	
	
}
