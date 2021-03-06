package javax.swing.text;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class WhitespaceBasedBreakIterator extends java.text.BreakIterator
{
	/**
	* Calculate break positions eagerly parallel to reading text.
	*/
	@:overload @:public override public function setText(ci : java.text.CharacterIterator) : Void;
	
	@:overload @:public override public function getText() : java.text.CharacterIterator;
	
	@:overload @:public override public function first() : Int;
	
	@:overload @:public override public function last() : Int;
	
	@:overload @:public override public function current() : Int;
	
	@:overload @:public override public function next() : Int;
	
	@:overload @:public override public function previous() : Int;
	
	@:overload @:public override public function next(n : Int) : Int;
	
	@:overload @:public override public function following(n : Int) : Int;
	
	@:overload @:public override public function preceding(n : Int) : Int;
	
	
}
