package javax.swing.plaf.basic;
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
extern class BasicProgressBarUI extends javax.swing.plaf.ProgressBarUI
{
	@:protected private var progressBar : javax.swing.JProgressBar;
	
	@:protected private var changeListener : javax.swing.event.ChangeListener;
	
	/**
	* Used to hold the location and size of the bouncing box (returned
	* by getBox) to be painted.
	*
	* @since 1.5
	*/
	@:require(java5) @:protected private var boxRect : java.awt.Rectangle;
	
	@:overload @:public @:static public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function installDefaults() : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	@:overload @:protected private function installListeners() : Void;
	
	/**
	* Starts the animation thread, creating and initializing
	* it if necessary. This method is invoked when an
	* indeterminate progress bar should start animating.
	* Reasons for this may include:
	* <ul>
	*    <li>The progress bar is determinate and becomes displayable
	*    <li>The progress bar is displayable and becomes determinate
	*    <li>The progress bar is displayable and determinate and this
	*        UI is installed
	* </ul>
	* If you implement your own animation thread,
	* you must override this method.
	*
	* @since 1.4
	* @see #stopAnimationTimer
	*/
	@:require(java4) @:overload @:protected private function startAnimationTimer() : Void;
	
	/**
	* Stops the animation thread.
	* This method is invoked when the indeterminate
	* animation should be stopped. Reasons for this may include:
	* <ul>
	*    <li>The progress bar changes to determinate
	*    <li>The progress bar is no longer part of a displayable hierarchy
	*    <li>This UI in uninstalled
	* </ul>
	* If you implement your own animation thread,
	* you must override this method.
	*
	* @since 1.4
	* @see #startAnimationTimer
	*/
	@:require(java4) @:overload @:protected private function stopAnimationTimer() : Void;
	
	/**
	* Removes all listeners installed by this object.
	*/
	@:overload @:protected private function uninstallListeners() : Void;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	@:overload @:protected private function getPreferredInnerHorizontal() : java.awt.Dimension;
	
	@:overload @:protected private function getPreferredInnerVertical() : java.awt.Dimension;
	
	/**
	* The "selectionForeground" is the color of the text when it is painted
	* over a filled area of the progress bar.
	*/
	@:overload @:protected private function getSelectionForeground() : java.awt.Color;
	
	/**
	* The "selectionBackground" is the color of the text when it is painted
	* over an unfilled area of the progress bar.
	*/
	@:overload @:protected private function getSelectionBackground() : java.awt.Color;
	
	/**
	* Returns the width (if HORIZONTAL) or height (if VERTICAL)
	* of each of the indivdual cells/units to be rendered in the
	* progress bar. However, for text rendering simplification and
	* aesthetic considerations, this function will return 1 when
	* the progress string is being rendered.
	*
	* @return the value representing the spacing between cells
	* @see    #setCellLength
	* @see    JProgressBar#isStringPainted
	*/
	@:overload @:protected private function getCellLength() : Int;
	
	@:overload @:protected private function setCellLength(cellLen : Int) : Void;
	
	/**
	* Returns the spacing between each of the cells/units in the
	* progress bar. However, for text rendering simplification and
	* aesthetic considerations, this function will return 0 when
	* the progress string is being rendered.
	*
	* @return the value representing the spacing between cells
	* @see    #setCellSpacing
	* @see    JProgressBar#isStringPainted
	*/
	@:overload @:protected private function getCellSpacing() : Int;
	
	@:overload @:protected private function setCellSpacing(cellSpace : Int) : Void;
	
	/**
	* This determines the amount of the progress bar that should be filled
	* based on the percent done gathered from the model. This is a common
	* operation so it was abstracted out. It assumes that your progress bar
	* is linear. That is, if you are making a circular progress indicator,
	* you will want to override this method.
	*/
	@:overload @:protected private function getAmountFull(b : java.awt.Insets, width : Int, height : Int) : Int;
	
	/**
	* Delegates painting to one of two methods:
	* paintDeterminate or paintIndeterminate.
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Stores the position and size of
	* the bouncing box that would be painted for the current animation index
	* in <code>r</code> and returns <code>r</code>.
	* Subclasses that add to the painting performed
	* in this class's implementation of <code>paintIndeterminate</code> --
	* to draw an outline around the bouncing box, for example --
	* can use this method to get the location of the bouncing
	* box that was just painted.
	* By overriding this method,
	* you have complete control over the size and position
	* of the bouncing box,
	* without having to reimplement <code>paintIndeterminate</code>.
	*
	* @param r  the Rectangle instance to be modified;
	*           may be <code>null</code>
	* @return   <code>null</code> if no box should be drawn;
	*           otherwise, returns the passed-in rectangle
	*           (if non-null)
	*           or a new rectangle
	*
	* @see #setAnimationIndex
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getBox(r : java.awt.Rectangle) : java.awt.Rectangle;
	
	/**
	* Returns the length
	* of the "bouncing box" to be painted.
	* This method is invoked by the
	* default implementation of <code>paintIndeterminate</code>
	* to get the width (if the progress bar is horizontal)
	* or height (if vertical) of the box.
	* For example:
	* <blockquote>
	* <pre>
	*boxRect.width = getBoxLength(componentInnards.width,
	*                             componentInnards.height);
	* </pre>
	* </blockquote>
	*
	* @param availableLength  the amount of space available
	*                         for the bouncing box to move in;
	*                         for a horizontal progress bar,
	*                         for example,
	*                         this should be
	*                         the inside width of the progress bar
	*                         (the component width minus borders)
	* @param otherDimension   for a horizontal progress bar, this should be
	*                         the inside height of the progress bar; this
	*                         value might be used to constrain or determine
	*                         the return value
	*
	* @return the size of the box dimension being determined;
	*         must be no larger than <code>availableLength</code>
	*
	* @see javax.swing.SwingUtilities#calculateInnerArea
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function getBoxLength(availableLength : Int, otherDimension : Int) : Int;
	
	/**
	* All purpose paint method that should do the right thing for all
	* linear bouncing-box progress bars.
	* Override this if you are making another kind of
	* progress bar.
	*
	* @see #paintDeterminate
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function paintIndeterminate(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* All purpose paint method that should do the right thing for almost
	* all linear, determinate progress bars. By setting a few values in
	* the defaults
	* table, things should work just fine to paint your progress bar.
	* Naturally, override this if you are making a circular or
	* semi-circular progress bar.
	*
	* @see #paintIndeterminate
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function paintDeterminate(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function paintString(g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int, amountFull : Int, b : java.awt.Insets) : Void;
	
	/**
	* Designate the place where the progress string will be painted.
	* This implementation places it at the center of the progress
	* bar (in both x and y). Override this if you want to right,
	* left, top, or bottom align the progress string or if you need
	* to nudge it around for any reason.
	*/
	@:overload @:protected private function getStringPlacement(g : java.awt.Graphics, progressString : String, x : Int, y : Int, width : Int, height : Int) : java.awt.Point;
	
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* The Minimum size for this component is 10. The rationale here
	* is that there should be at least one pixel per 10 percent.
	*/
	@:overload @:public override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Gets the index of the current animation frame.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getAnimationIndex() : Int;
	
	/**
	* Returns the number of frames for the complete animation loop
	* used by an indeterminate JProgessBar. The progress chunk will go
	* from one end to the other and back during the entire loop. This
	* visual behavior may be changed by subclasses in other Look and Feels.
	*
	* @return the number of frames
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected @:final private function getFrameCount() : Int;
	
	/**
	* Sets the index of the current animation frame
	* to the specified value and requests that the
	* progress bar be repainted.
	* Subclasses that don't use the default painting code
	* might need to override this method
	* to change the way that the <code>repaint</code> method
	* is invoked.
	*
	* @param newValue the new animation index; no checking
	*                 is performed on its value
	* @see #incrementAnimationIndex
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function setAnimationIndex(newValue : Int) : Void;
	
	/**
	* Sets the index of the current animation frame,
	* to the next valid value,
	* which results in the progress bar being repainted.
	* The next valid value is, by default,
	* the current animation index plus one.
	* If the new value would be too large,
	* this method sets the index to 0.
	* Subclasses might need to override this method
	* to ensure that the index does not go over
	* the number of frames needed for the particular
	* progress bar instance.
	* This method is invoked by the default animation thread
	* every <em>X</em> milliseconds,
	* where <em>X</em> is specified by the "ProgressBar.repaintInterval"
	* UI default.
	*
	* @see #setAnimationIndex
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function incrementAnimationIndex() : Void;
	
	
}
/**
* Implements an animation thread that invokes repaint
* at a fixed rate.  If ADJUSTTIMER is true, this thread
* will continuously adjust the repaint interval to
* try to make the actual time between repaints match
* the requested rate.
*/
@:native('javax$swing$plaf$basic$BasicProgressBarUI$Animator') @:internal extern class BasicProgressBarUI_Animator implements java.awt.event.ActionListener
{
	/**
	* Reacts to the timer's action events.
	*/
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicProgressBarUI}.
*/
@:native('javax$swing$plaf$basic$BasicProgressBarUI$ChangeHandler') extern class BasicProgressBarUI_ChangeHandler implements javax.swing.event.ChangeListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicProgressBarUI$Handler') @:internal extern class BasicProgressBarUI_Handler implements javax.swing.event.ChangeListener implements java.beans.PropertyChangeListener implements java.awt.event.HierarchyListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public public function hierarchyChanged(he : java.awt.event.HierarchyEvent) : Void;
	
	
}
