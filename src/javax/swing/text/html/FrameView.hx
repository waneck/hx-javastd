package javax.swing.text.html;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class FrameView extends javax.swing.text.ComponentView implements javax.swing.event.HyperlinkListener
{
	/**
	* Creates a new Frame.
	*
	* @param elem the element to represent.
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	@:overload override private function createComponent() : java.awt.Component;
	
	/**
	* Sets the parent view for the FrameView.
	* Also determines if the FrameView should be editable
	* or not based on whether the JTextComponent that
	* contains it is editable.
	*
	* @param parent View
	*/
	@:overload override public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* Also determines if the FrameView should be editable
	* or not based on whether the JTextComponent that
	* contains it is editable. And then proceeds to call
	* the superclass to do the paint().
	*
	* @param parent View
	* @see text.ComponentView#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Notification of a change relative to a
	* hyperlink. This method searches for the outermost
	* JEditorPane, and then fires an HTMLFrameHyperlinkEvent
	* to that frame.  In addition, if the target is _parent,
	* and there is not nested framesets then the target is
	* reset to _top.  If the target is _top, in addition to
	* firing the event to the outermost JEditorPane, this
	* method also invokes the setPage() method and explicitly
	* replaces the current document with the destination url.
	*
	* @param HyperlinkEvent
	*/
	@:overload public function hyperlinkUpdate(evt : javax.swing.event.HyperlinkEvent) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.  Currently this view
	* handles changes to its SRC attribute.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	*
	*/
	@:overload override public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Determines the minimum span for this view along an
	* axis.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*  <code>View.Y_AXIS</code>
	* @return the preferred span; given that we do not
	* support resizing of frames, the minimum span returned
	* is the same as the preferred span
	*
	*/
	@:overload override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the maximum span for this view along an
	* axis.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*  <code>View.Y_AXIS</code>
	* @return the preferred span; given that we do not
	* support resizing of frames, the maximum span returned
	* is the same as the preferred span
	*
	*/
	@:overload override public function getMaximumSpan(axis : Int) : Single;
	
	
}
/** Editor pane rendering frame of HTML document
*  It uses the same editor kits classes as outermost JEditorPane
*/
@:native('javax$swing$text$html$FrameView$FrameEditorPane') @:internal extern class FrameView_FrameEditorPane extends javax.swing.JEditorPane implements sun.swing.text.html.FrameEditorPaneTag
{
	@:overload override public function getEditorKitForContentType(type : String) : javax.swing.text.EditorKit;
	
	
}
