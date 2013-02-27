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
/**
* Autoscroller is responsible for generating synthetic mouse dragged
* events. It is the responsibility of the Component (or its MouseListeners)
* that receive the events to do the actual scrolling in response to the
* mouse dragged events.
*
* @author Dave Moore
* @author Scott Violet
*/
@:internal extern class Autoscroller implements java.awt.event.ActionListener
{
	/**
	* Stops autoscroll events from happening on the specified component.
	*/
	@:overload public static function stop(c : javax.swing.JComponent) : Void;
	
	/**
	* Stops autoscroll events from happening on the specified component.
	*/
	@:overload public static function isRunning(c : javax.swing.JComponent) : Bool;
	
	/**
	* Invoked when a mouse dragged event occurs, will start the autoscroller
	* if necessary.
	*/
	@:overload public static function processMouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* ActionListener method. Invoked when the Timer fires. This will scroll
	* if necessary.
	*/
	@:overload public function actionPerformed(x : java.awt.event.ActionEvent) : Void;
	
	
}
