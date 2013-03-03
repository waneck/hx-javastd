package javax.swing;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class BufferStrategyPaintManager extends javax.swing.RepaintManager.RepaintManager_PaintManager
{
	/**
	* Cleans up any created BufferStrategies.
	*/
	@:overload @:protected override private function dispose() : Void;
	
	/**
	* Shows the specified region of the back buffer.  This will return
	* true if successful, false otherwise.  This is invoked on the
	* toolkit thread in response to an expose event.
	*/
	@:overload @:public override public function show(c : java.awt.Container, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	@:overload @:public override public function paint(paintingComponent : javax.swing.JComponent, bufferComponent : javax.swing.JComponent, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	@:overload @:public override public function copyArea(c : javax.swing.JComponent, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, deltaX : Int, deltaY : Int, clip : Bool) : Void;
	
	@:overload @:public override public function beginPaint() : Void;
	
	@:overload @:public override public function endPaint() : Void;
	
	/**
	* Invoked when the double buffering or useTrueDoubleBuffering
	* changes for a JRootPane.  If the rootpane is not double
	* buffered, or true double buffering changes we throw out any
	* cache we may have.
	*/
	@:overload @:public override public function doubleBufferingChanged(rootPane : javax.swing.JRootPane) : Void;
	
	
}
/**
* BufferInfo is used to track the BufferStrategy being used for
* a particular Component.  In addition to tracking the BufferStrategy
* it will install a WindowListener and ComponentListener.  When the
* component is hidden/iconified the buffer is marked as needing to be
* completely repainted.
*/
@:native('javax$swing$BufferStrategyPaintManager$BufferInfo') @:internal extern class BufferStrategyPaintManager_BufferInfo extends java.awt.event.ComponentAdapter implements java.awt.event.WindowListener
{
	@:overload @:public public function new(root : java.awt.Container) : Void;
	
	@:overload @:public public function setPaintAllOnExpose(paintAllOnExpose : Bool) : Void;
	
	@:overload @:public public function getPaintAllOnExpose() : Bool;
	
	@:overload @:public public function setContentsLostDuringExpose(value : Bool) : Void;
	
	@:overload @:public public function getContentsLostDuringExpose() : Bool;
	
	@:overload @:public public function setInSync(inSync : Bool) : Void;
	
	/**
	* Whether or not the contents of the buffer strategy
	* is in sync with the window.  This is set to true when the root
	* pane paints all, and false when contents are lost/restored.
	*/
	@:overload @:public public function isInSync() : Bool;
	
	/**
	* Returns the Root (Window or Applet) that this BufferInfo references.
	*/
	@:overload @:public public function getRoot() : java.awt.Container;
	
	/**
	* Returns the BufferStartegy.  This will return null if
	* the BufferStartegy hasn't been created and <code>create</code> is
	* false, or if there is a problem in creating the
	* <code>BufferStartegy</code>.
	*
	* @param create If true, and the BufferStartegy is currently null,
	*               one will be created.
	*/
	@:overload @:public public function getBufferStrategy(create : Bool) : java.awt.image.BufferStrategy;
	
	/**
	* Returns true if the buffer strategy of the component differs
	* from current buffer strategy.
	*/
	@:overload @:public public function hasBufferStrategyChanged() : Bool;
	
	/**
	* Cleans up and removes any references.
	*/
	@:overload @:public public function dispose() : Void;
	
	@:overload @:public override public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function windowIconified(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowClosed(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowOpened(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowClosing(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowDeiconified(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowActivated(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowDeactivated(e : java.awt.event.WindowEvent) : Void;
	
	
}
