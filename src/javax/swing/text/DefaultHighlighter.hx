package javax.swing.text;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Implements the Highlighter interfaces.  Implements a simple highlight
* painter that renders in a solid color.
*
* @author  Timothy Prinzing
* @see     Highlighter
*/
extern class DefaultHighlighter extends javax.swing.text.LayeredHighlighter
{
	/**
	* Creates a new DefaultHighlighther object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Renders the highlights.
	*
	* @param g the graphics context
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Called when the UI is being installed into the
	* interface of a JTextComponent.  Installs the editor, and
	* removes any existing highlights.
	*
	* @param c the editor component
	* @see Highlighter#install
	*/
	@:overload override public function install(c : javax.swing.text.JTextComponent) : Void;
	
	/**
	* Called when the UI is being removed from the interface of
	* a JTextComponent.
	*
	* @param c the component
	* @see Highlighter#deinstall
	*/
	@:overload override public function deinstall(c : javax.swing.text.JTextComponent) : Void;
	
	/**
	* Adds a highlight to the view.  Returns a tag that can be used
	* to refer to the highlight.
	*
	* @param p0   the start offset of the range to highlight >= 0
	* @param p1   the end offset of the range to highlight >= p0
	* @param p    the painter to use to actually render the highlight
	* @return     an object that can be used as a tag
	*   to refer to the highlight
	* @exception BadLocationException if the specified location is invalid
	*/
	@:overload public function addHighlight(p0 : Int, p1 : Int, p : javax.swing.text.Highlighter.Highlighter_HighlightPainter) : Dynamic;
	
	/**
	* Removes a highlight from the view.
	*
	* @param tag the reference to the highlight
	*/
	@:overload override public function removeHighlight(tag : Dynamic) : Void;
	
	/**
	* Removes all highlights.
	*/
	@:overload override public function removeAllHighlights() : Void;
	
	/**
	* Changes a highlight.
	*
	* @param tag the highlight tag
	* @param p0 the beginning of the range >= 0
	* @param p1 the end of the range >= p0
	* @exception BadLocationException if the specified location is invalid
	*/
	@:overload override public function changeHighlight(tag : Dynamic, p0 : Int, p1 : Int) : Void;
	
	/**
	* Makes a copy of the highlights.  Does not actually clone each highlight,
	* but only makes references to them.
	*
	* @return the copy
	* @see Highlighter#getHighlights
	*/
	@:overload override public function getHighlights() : java.NativeArray<javax.swing.text.Highlighter.Highlighter_Highlight>;
	
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
	@:overload override public function paintLayeredHighlights(g : java.awt.Graphics, p0 : Int, p1 : Int, viewBounds : java.awt.Shape, editor : javax.swing.text.JTextComponent, view : javax.swing.text.View) : Void;
	
	/**
	* If true, highlights are drawn as the Views draw the text. That is
	* the Views will call into <code>paintLayeredHighlight</code> which
	* will result in a rectangle being drawn before the text is drawn
	* (if the offsets are in a highlighted region that is). For this to
	* work the painter supplied must be an instance of
	* LayeredHighlightPainter.
	*/
	@:overload public function setDrawsLayeredHighlights(newValue : Bool) : Void;
	
	@:overload public function getDrawsLayeredHighlights() : Bool;
	
	/**
	* Default implementation of LayeredHighlighter.LayerPainter that can
	* be used for painting highlights.
	* <p>
	* As of 1.4 this field is final.
	*/
	public static var DefaultPainter(default, null) : javax.swing.text.LayeredHighlighter.LayeredHighlighter_LayerPainter;
	
	
}
/**
* Simple highlight painter that fills a highlighted area with
* a solid color.
*/
@:native('javax$swing$text$DefaultHighlighter$DefaultHighlightPainter') extern class DefaultHighlighter_DefaultHighlightPainter extends javax.swing.text.LayeredHighlighter.LayeredHighlighter_LayerPainter
{
	/**
	* Constructs a new highlight painter. If <code>c</code> is null,
	* the JTextComponent will be queried for its selection color.
	*
	* @param c the color for the highlight
	*/
	@:overload public function new(c : java.awt.Color) : Void;
	
	/**
	* Returns the color of the highlight.
	*
	* @return the color
	*/
	@:overload public function getColor() : java.awt.Color;
	
	/**
	* Paints a highlight.
	*
	* @param g the graphics context
	* @param offs0 the starting model offset >= 0
	* @param offs1 the ending model offset >= offs1
	* @param bounds the bounding box for the highlight
	* @param c the editor
	*/
	@:overload override public function paint(g : java.awt.Graphics, offs0 : Int, offs1 : Int, bounds : java.awt.Shape, c : javax.swing.text.JTextComponent) : Void;
	
	/**
	* Paints a portion of a highlight.
	*
	* @param g the graphics context
	* @param offs0 the starting model offset >= 0
	* @param offs1 the ending model offset >= offs1
	* @param bounds the bounding box of the view, which is not
	*        necessarily the region to paint.
	* @param c the editor
	* @param view View painting for
	* @return region drawing occured in
	*/
	@:overload override public function paintLayer(g : java.awt.Graphics, offs0 : Int, offs1 : Int, bounds : java.awt.Shape, c : javax.swing.text.JTextComponent, view : javax.swing.text.View) : java.awt.Shape;
	
	
}
@:native('javax$swing$text$DefaultHighlighter$HighlightInfo') @:internal extern class DefaultHighlighter_HighlightInfo implements javax.swing.text.Highlighter.Highlighter_Highlight
{
	@:overload public function getStartOffset() : Int;
	
	@:overload public function getEndOffset() : Int;
	
	@:overload public function getPainter() : javax.swing.text.Highlighter.Highlighter_HighlightPainter;
	
	
}
/**
* LayeredHighlightPainter is used when a drawsLayeredHighlights is
* true. It maintains a rectangle of the region to paint.
*/
@:native('javax$swing$text$DefaultHighlighter$LayeredHighlightInfo') @:internal extern class DefaultHighlighter_LayeredHighlightInfo extends DefaultHighlighter_HighlightInfo
{
	
}
/**
* This class invokes <code>mapper.damageRange</code> in
* EventDispatchThread. The only one instance per Highlighter
* is cretaed. When a number of ranges should be damaged
* it collects them into queue and damages
* them in consecutive order in <code>run</code>
* call.
*/
@:native('javax$swing$text$DefaultHighlighter$SafeDamager') @:internal extern class DefaultHighlighter_SafeDamager implements java.lang.Runnable
{
	/**
	* Executes range(s) damage and cleans range queue.
	*/
	@:overload @:synchronized public function run() : Void;
	
	/**
	* Adds the range to be damaged into the range queue. If the
	* range queue is empty (the first call or run() was already
	* invoked) then adds this class instance into EventDispatch
	* queue.
	*
	* The method also tracks if the current document changed or
	* component is null. In this case it removes all ranges added
	* before from range queue.
	*/
	@:overload @:synchronized public function damageRange(pos0 : javax.swing.text.Position, pos1 : javax.swing.text.Position) : Void;
	
	
}
