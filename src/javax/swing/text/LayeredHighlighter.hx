package javax.swing.text;
/*
* Copyright (c) 1998, Oracle and/or its affiliates. All rights reserved.
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
extern class LayeredHighlighter implements javax.swing.text.Highlighter
{
	/**
	* When leaf Views (such as LabelView) are rendering they should
	* call into this method. If a highlight is in the given region it will
	* be drawn immediately.
	*
	* @param g Graphics used to draw
	* @param p0 starting offset of view
	* @param p1 ending offset of view
	* @param viewBounds Bounds of View
	* @param editor JTextComponent
	* @param view View instance being rendered
	*/
	@:overload @:abstract public function paintLayeredHighlights(g : java.awt.Graphics, p0 : Int, p1 : Int, viewBounds : java.awt.Shape, editor : javax.swing.text.JTextComponent, view : javax.swing.text.View) : Void;
	
	/**
	* Called when the UI is being removed from the
	* interface of a JTextComponent.  This is used to
	* unregister any listeners that were attached.
	*
	* @param c the JTextComponent editor
	*/
	@:overload @:public public function deinstall(c : javax.swing.text.JTextComponent) : Void;
	
	/**
	* Adds a highlight to the view.  Returns a tag that can be used
	* to refer to the highlight.
	*
	* @param p0 the beginning of the range >= 0
	* @param p1 the end of the range >= p0
	* @param p the painter to use for the actual highlighting
	* @return an object that refers to the highlight
	* @exception BadLocationException for an invalid range specification
	*/
	@:overload @:public public function addHighlight(p0 : Int, p1 : Int, p : Highlighter_HighlightPainter) : Dynamic;
	
	/**
	* Fetches the current list of highlights.
	*
	* @return the highlight list
	*/
	@:overload @:public public function getHighlights() : java.NativeArray<Highlighter_Highlight>;
	
	/**
	* Called when the UI is being installed into the
	* interface of a JTextComponent.  This can be used
	* to gain access to the model that is being navigated
	* by the implementation of this interface.
	*
	* @param c the JTextComponent editor
	*/
	@:overload @:public public function install(c : javax.swing.text.JTextComponent) : Void;
	
	/**
	* Removes a highlight from the view.
	*
	* @param tag  which highlight to remove
	*/
	@:overload @:public public function removeHighlight(tag : Dynamic) : Void;
	
	/**
	* Removes all highlights this highlighter is responsible for.
	*/
	@:overload @:public public function removeAllHighlights() : Void;
	
	/**
	* Renders the highlights.
	*
	* @param g the graphics context.
	*/
	@:overload @:public public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Changes the given highlight to span a different portion of
	* the document.  This may be more efficient than a remove/add
	* when a selection is expanding/shrinking (such as a sweep
	* with a mouse) by damaging only what changed.
	*
	* @param tag  which highlight to change
	* @param p0 the beginning of the range >= 0
	* @param p1 the end of the range >= p0
	* @exception BadLocationException for an invalid range specification
	*/
	@:overload @:public public function changeHighlight(tag : Dynamic, p0 : Int, p1 : Int) : Void;
	
	
}
/**
* Layered highlight renderer.
*/
@:native('javax$swing$text$LayeredHighlighter$LayerPainter') extern class LayeredHighlighter_LayerPainter implements javax.swing.text.Highlighter.Highlighter_HighlightPainter
{
	@:overload @:abstract public function paintLayer(g : java.awt.Graphics, p0 : Int, p1 : Int, viewBounds : java.awt.Shape, editor : javax.swing.text.JTextComponent, view : javax.swing.text.View) : java.awt.Shape;
	
	/**
	* Renders the highlight.
	*
	* @param g the graphics context
	* @param p0 the starting offset in the model >= 0
	* @param p1 the ending offset in the model >= p0
	* @param bounds the bounding box for the highlight
	* @param c the editor
	*/
	@:overload @:public public function paint(g : java.awt.Graphics, p0 : Int, p1 : Int, bounds : java.awt.Shape, c : javax.swing.text.JTextComponent) : Void;
	
	
}
