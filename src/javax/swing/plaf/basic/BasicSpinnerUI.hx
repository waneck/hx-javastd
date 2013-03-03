package javax.swing.plaf.basic;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicSpinnerUI extends javax.swing.plaf.SpinnerUI
{
	/**
	* The spinner that we're a UI delegate for.  Initialized by
	* the <code>installUI</code> method, and reset to null
	* by <code>uninstallUI</code>.
	*
	* @see #installUI
	* @see #uninstallUI
	*/
	@:protected private var spinner : javax.swing.JSpinner;
	
	/**
	* Returns a new instance of BasicSpinnerUI.  SpinnerListUI
	* delegates are allocated one per JSpinner.
	*
	* @param c the JSpinner (not used)
	* @see ComponentUI#createUI
	* @return a new BasicSpinnerUI object
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Calls <code>installDefaults</code>, <code>installListeners</code>,
	* and then adds the components returned by <code>createNextButton</code>,
	* <code>createPreviousButton</code>, and <code>createEditor</code>.
	*
	* @param c the JSpinner
	* @see #installDefaults
	* @see #installListeners
	* @see #createNextButton
	* @see #createPreviousButton
	* @see #createEditor
	*/
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Calls <code>uninstallDefaults</code>, <code>uninstallListeners</code>,
	* and then removes all of the spinners children.
	*
	* @param c the JSpinner (not used)
	*/
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Initializes <code>PropertyChangeListener</code> with
	* a shared object that delegates interesting PropertyChangeEvents
	* to protected methods.
	* <p>
	* This method is called by <code>installUI</code>.
	*
	* @see #replaceEditor
	* @see #uninstallListeners
	*/
	@:overload @:protected private function installListeners() : Void;
	
	/**
	* Removes the <code>PropertyChangeListener</code> added
	* by installListeners.
	* <p>
	* This method is called by <code>uninstallUI</code>.
	*
	* @see #installListeners
	*/
	@:overload @:protected private function uninstallListeners() : Void;
	
	/**
	* Initialize the <code>JSpinner</code> <code>border</code>,
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
	@:overload @:protected private function installDefaults() : Void;
	
	/**
	* Sets the <code>JSpinner's</code> layout manager to null.  This
	* method is called by <code>uninstallUI</code>.
	*
	* @see #installDefaults
	* @see #uninstallUI
	*/
	@:overload @:protected private function uninstallDefaults() : Void;
	
	/**
	* Installs the necessary listeners on the next button, <code>c</code>,
	* to update the <code>JSpinner</code> in response to a user gesture.
	*
	* @param c Component to install the listeners on
	* @throws NullPointerException if <code>c</code> is null.
	* @see #createNextButton
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function installNextButtonListeners(c : java.awt.Component) : Void;
	
	/**
	* Installs the necessary listeners on the previous button, <code>c</code>,
	* to update the <code>JSpinner</code> in response to a user gesture.
	*
	* @param c Component to install the listeners on.
	* @throws NullPointerException if <code>c</code> is null.
	* @see #createPreviousButton
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function installPreviousButtonListeners(c : java.awt.Component) : Void;
	
	/**
	* Creates a <code>LayoutManager</code> that manages the <code>editor</code>,
	* <code>nextButton</code>, and <code>previousButton</code>
	* children of the JSpinner.  These three children must be
	* added with a constraint that identifies their role:
	* "Editor", "Next", and "Previous". The default layout manager
	* can handle the absence of any of these children.
	*
	* @return a LayoutManager for the editor, next button, and previous button.
	* @see #createNextButton
	* @see #createPreviousButton
	* @see #createEditor
	*/
	@:overload @:protected private function createLayout() : java.awt.LayoutManager;
	
	/**
	* Creates a <code>PropertyChangeListener</code> that can be
	* added to the JSpinner itself.  Typically, this listener
	* will call replaceEditor when the "editor" property changes,
	* since it's the <code>SpinnerUI's</code> responsibility to
	* add the editor to the JSpinner (and remove the old one).
	* This method is called by <code>installListeners</code>.
	*
	* @return A PropertyChangeListener for the JSpinner itself
	* @see #installListeners
	*/
	@:overload @:protected private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	/**
	* Creates a decrement button, i.e. component that replaces the spinner
	* value with the object returned by <code>spinner.getPreviousValue</code>.
	* By default the <code>previousButton</code> is a {@code JButton}. If the
	* decrement button is not needed this method should return {@code null}.
	*
	* @return a component that will replace the spinner's value with the
	*     previous value in the sequence, or {@code null}
	* @see #installUI
	* @see #createNextButton
	* @see #installPreviousButtonListeners
	*/
	@:overload @:protected private function createPreviousButton() : java.awt.Component;
	
	/**
	* Creates an increment button, i.e. component that replaces the spinner
	* value with the object returned by <code>spinner.getNextValue</code>.
	* By default the <code>nextButton</code> is a {@code JButton}. If the
	* increment button is not needed this method should return {@code null}.
	*
	* @return a component that will replace the spinner's value with the
	*     next value in the sequence, or {@code null}
	* @see #installUI
	* @see #createPreviousButton
	* @see #installNextButtonListeners
	*/
	@:overload @:protected private function createNextButton() : java.awt.Component;
	
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
	@:overload @:protected private function createEditor() : javax.swing.JComponent;
	
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
	@:overload @:protected private function replaceEditor(oldEditor : javax.swing.JComponent, newEditor : javax.swing.JComponent) : Void;
	
	/**
	* Installs the keyboard Actions onto the JSpinner.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function installKeyboardActions() : Void;
	
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
	
	
}
/**
* A handler for spinner arrow button mouse and action events.  When
* a left mouse pressed event occurs we look up the (enabled) spinner
* that's the source of the event and start the autorepeat timer.  The
* timer fires action events until any button is released at which
* point the timer is stopped and the reference to the spinner cleared.
* The timer doesn't start until after a 300ms delay, so often the
* source of the initial (and final) action event is just the button
* logic for mouse released - which means that we're relying on the fact
* that our mouse listener runs after the buttons mouse listener.
* <p>
* Note that one instance of this handler is shared by all slider previous
* arrow buttons and likewise for all of the next buttons,
* so it doesn't have any state that persists beyond the limits
* of a single button pressed/released gesture.
*/
@:native('javax$swing$plaf$basic$BasicSpinnerUI$ArrowButtonHandler') @:internal extern class BasicSpinnerUI_ArrowButtonHandler extends javax.swing.AbstractAction implements java.awt.event.FocusListener implements java.awt.event.MouseListener implements javax.swing.plaf.UIResource
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicSpinnerUI$Handler') @:internal extern class BasicSpinnerUI_Handler implements java.awt.LayoutManager implements java.beans.PropertyChangeListener implements javax.swing.event.ChangeListener
{
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(parent : java.awt.Container) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
