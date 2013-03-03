package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Provides the Synth L&F UI delegate for
* {@link javax.swing.JSpinner}.
*
* @author Hans Muller
* @author Joshua Outwater
* @since 1.7
*/
@:require(java7) extern class SynthSpinnerUI extends javax.swing.plaf.basic.BasicSpinnerUI implements java.beans.PropertyChangeListener implements javax.swing.plaf.synth.SynthUI
{
	/**
	* Returns a new instance of SynthSpinnerUI.
	*
	* @param c the JSpinner (not used)
	* @see ComponentUI#createUI
	* @return a new SynthSpinnerUI object
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function installListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function uninstallListeners() : Void;
	
	/**
	* Initializes the <code>JSpinner</code> <code>border</code>,
	* <code>foreground</code>, and <code>background</code>, properties
	* based on the corresponding "Spinner.*" properties from defaults table.
	* The <code>JSpinners</code> layout is set to the value returned by
	* <code>createLayout</code>.  This method is called by <code>installUI</code>.
	*
	* @see #uninstallDefaults
	* @see #installUI
	* @see #createLayout
	* @see LookAndFeel#installBorder
	* @see LookAndFeel#installColors
	*/
	@:overload @:protected override private function installDefaults() : Void;
	
	/**
	* Sets the <code>JSpinner's</code> layout manager to null.  This
	* method is called by <code>uninstallUI</code>.
	*
	* @see #installDefaults
	* @see #uninstallUI
	*/
	@:overload @:protected override private function uninstallDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function createLayout() : java.awt.LayoutManager;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function createPreviousButton() : java.awt.Component;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function createNextButton() : java.awt.Component;
	
	/**
	* This method is called by installUI to get the editor component
	* of the <code>JSpinner</code>.  By default it just returns
	* <code>JSpinner.getEditor()</code>.  Subclasses can override
	* <code>createEditor</code> to return a component that contains
	* the spinner's editor or null, if they're going to handle adding
	* the editor to the <code>JSpinner</code> in an
	* <code>installUI</code> override.
	* <p>
	* Typically this method would be overridden to wrap the editor
	* with a container with a custom border, since one can't assume
	* that the editors border can be set directly.
	* <p>
	* The <code>replaceEditor</code> method is called when the spinners
	* editor is changed with <code>JSpinner.setEditor</code>.  If you've
	* overriden this method, then you'll probably want to override
	* <code>replaceEditor</code> as well.
	*
	* @return the JSpinners editor JComponent, spinner.getEditor() by default
	* @see #installUI
	* @see #replaceEditor
	* @see JSpinner#getEditor
	*/
	@:overload @:protected override private function createEditor() : javax.swing.JComponent;
	
	/**
	* Called by the <code>PropertyChangeListener</code> when the
	* <code>JSpinner</code> editor property changes.  It's the responsibility
	* of this method to remove the old editor and add the new one.  By
	* default this operation is just:
	* <pre>
	* spinner.remove(oldEditor);
	* spinner.add(newEditor, "Editor");
	* </pre>
	* The implementation of <code>replaceEditor</code> should be coordinated
	* with the <code>createEditor</code> method.
	*
	* @see #createEditor
	* @see #createPropertyChangeListener
	*/
	@:overload @:protected override private function replaceEditor(oldEditor : javax.swing.JComponent, newEditor : javax.swing.JComponent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
	/**
	* Notifies this UI delegate to repaint the specified component.
	* This method paints the component background, then calls
	* the {@link #paint(SynthContext,Graphics)} method.
	*
	* <p>In general, this method does not need to be overridden by subclasses.
	* All Look and Feel rendering code should reside in the {@code paint} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload @:public override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the specified component according to the Look and Feel.
	* <p>This method is not used by Synth Look and Feel.
	* Painting is handled by the {@link #paint(SynthContext,Graphics)} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the specified component. This implementation does nothing.
	*
	* @param context context for the component being painted
	* @param g the {@code Graphics} object used for painting
	* @see #update(Graphics,JComponent)
	*/
	@:overload @:protected private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* A simple layout manager for the editor and the next/previous buttons.
* See the SynthSpinnerUI javadoc for more information about exactly
* how the components are arranged.
*/
@:native('javax$swing$plaf$synth$SynthSpinnerUI$SpinnerLayout') @:internal extern class SynthSpinnerUI_SpinnerLayout implements java.awt.LayoutManager implements javax.swing.plaf.UIResource
{
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(parent : java.awt.Container) : Void;
	
	
}
/** Listen to editor text field focus changes and repaint whole spinner */
@:native('javax$swing$plaf$synth$SynthSpinnerUI$EditorFocusHandler') @:internal extern class SynthSpinnerUI_EditorFocusHandler implements java.awt.event.FocusListener
{
	/** Invoked when a editor text field gains the keyboard focus. */
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	/** Invoked when a editor text field loses the keyboard focus. */
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
