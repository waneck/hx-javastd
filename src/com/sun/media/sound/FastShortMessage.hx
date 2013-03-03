package com.sun.media.sound;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
* an optimized ShortMessage that does not need an array
*
* @author Florian Bomers
*/
@:internal extern class FastShortMessage extends javax.sound.midi.ShortMessage
{
	@:overload @:public public function new(packedMsg : Int) : Void;
	
	/** Creates a FastShortMessage from this ShortMessage */
	@:overload @:public public function new(msg : javax.sound.midi.ShortMessage) : Void;
	
	@:overload @:public override public function getMessage() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function getLength() : Int;
	
	@:overload @:public override public function setMessage(status : Int) : Void;
	
	@:overload @:public override public function setMessage(status : Int, data1 : Int, data2 : Int) : Void;
	
	@:overload @:public override public function setMessage(command : Int, channel : Int, data1 : Int, data2 : Int) : Void;
	
	@:overload @:public override public function getChannel() : Int;
	
	@:overload @:public override public function getCommand() : Int;
	
	@:overload @:public override public function getData1() : Int;
	
	@:overload @:public override public function getData2() : Int;
	
	@:overload @:public override public function getStatus() : Int;
	
	/**
	* Creates a new object of the same class and with the same contents
	* as this object.
	* @return a clone of this instance.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	
}
