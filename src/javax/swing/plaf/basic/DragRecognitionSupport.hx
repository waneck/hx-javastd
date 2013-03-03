package javax.swing.plaf.basic;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DragRecognitionSupport
{
	/**
	* Returns whether or not the event is potentially part of a drag sequence.
	*/
	@:overload @:public @:static public static function mousePressed(me : java.awt.event.MouseEvent) : Bool;
	
	/**
	* If a dnd recognition has been going on, return the MouseEvent
	* that started the recognition. Otherwise, return null.
	*/
	@:overload @:public @:static public static function mouseReleased(me : java.awt.event.MouseEvent) : java.awt.event.MouseEvent;
	
	/**
	* Returns whether or not a drag gesture recognition is ongoing.
	*/
	@:overload @:public @:static public static function mouseDragged(me : java.awt.event.MouseEvent, bd : javax.swing.plaf.basic.DragRecognitionSupport.DragRecognitionSupport_BeforeDrag) : Bool;
	
	
}
/**
* This interface allows us to pass in a handler to mouseDragged,
* so that we can be notified immediately before a drag begins.
*/
@:native('javax$swing$plaf$basic$DragRecognitionSupport$BeforeDrag') extern interface DragRecognitionSupport_BeforeDrag
{
	@:overload @:public public function dragStarting(me : java.awt.event.MouseEvent) : Void;
	
	
}
