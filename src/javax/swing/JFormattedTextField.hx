package javax.swing;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* <code>JFormattedTextField</code> extends <code>JTextField</code> adding
* support for formatting arbitrary values, as well as retrieving a particular
* object once the user has edited the text. The following illustrates
* configuring a <code>JFormattedTextField</code> to edit dates:
* <pre>
*   JFormattedTextField ftf = new JFormattedTextField();
*   ftf.setValue(new Date());
* </pre>
* <p>
* Once a <code>JFormattedTextField</code> has been created, you can
* listen for editing changes by way of adding
* a <code>PropertyChangeListener</code> and listening for
* <code>PropertyChangeEvent</code>s with the property name <code>value</code>.
* <p>
* <code>JFormattedTextField</code> allows
* configuring what action should be taken when focus is lost. The possible
* configurations are:
* <table summary="Possible JFormattedTextField configurations and their descriptions">
* <tr><th><p align="left">Value</p></th><th><p align="left">Description</p></th></tr>
* <tr><td>JFormattedTextField.REVERT
*            <td>Revert the display to match that of <code>getValue</code>,
*                possibly losing the current edit.
*        <tr><td>JFormattedTextField.COMMIT
*            <td>Commits the current value. If the value being edited
*                isn't considered a legal value by the
*                <code>AbstractFormatter</code> that is, a
*                <code>ParseException</code> is thrown, then the value
*                will not change, and then edited value will persist.
*        <tr><td>JFormattedTextField.COMMIT_OR_REVERT
*            <td>Similar to <code>COMMIT</code>, but if the value isn't
*                legal, behave like <code>REVERT</code>.
*        <tr><td>JFormattedTextField.PERSIST
*            <td>Do nothing, don't obtain a new
*                <code>AbstractFormatter</code>, and don't update the value.
* </table>
* The default is <code>JFormattedTextField.COMMIT_OR_REVERT</code>,
* refer to {@link #setFocusLostBehavior} for more information on this.
* <p>
* <code>JFormattedTextField</code> allows the focus to leave, even if
* the currently edited value is invalid. To lock the focus down while the
* <code>JFormattedTextField</code> is an invalid edit state
* you can attach an <code>InputVerifier</code>. The following code snippet
* shows a potential implementation of such an <code>InputVerifier</code>:
* <pre>
* public class FormattedTextFieldVerifier extends InputVerifier {
*     public boolean verify(JComponent input) {
*         if (input instanceof JFormattedTextField) {
*             JFormattedTextField ftf = (JFormattedTextField)input;
*             AbstractFormatter formatter = ftf.getFormatter();
*             if (formatter != null) {
*                 String text = ftf.getText();
*                 try {
*                      formatter.stringToValue(text);
*                      return true;
*                  } catch (ParseException pe) {
*                      return false;
*                  }
*              }
*          }
*          return true;
*      }
*      public boolean shouldYieldFocus(JComponent input) {
*          return verify(input);
*      }
*  }
* </pre>
* <p>
* Alternatively, you could invoke <code>commitEdit</code>, which would also
* commit the value.
* <p>
* <code>JFormattedTextField</code> does not do the formatting it self,
* rather formatting is done through an instance of
* <code>JFormattedTextField.AbstractFormatter</code> which is obtained from
* an instance of <code>JFormattedTextField.AbstractFormatterFactory</code>.
* Instances of <code>JFormattedTextField.AbstractFormatter</code> are
* notified when they become active by way of the
* <code>install</code> method, at which point the
* <code>JFormattedTextField.AbstractFormatter</code> can install whatever
* it needs to, typically a <code>DocumentFilter</code>. Similarly when
* <code>JFormattedTextField</code> no longer
* needs the <code>AbstractFormatter</code>, it will invoke
* <code>uninstall</code>.
* <p>
* <code>JFormattedTextField</code> typically
* queries the <code>AbstractFormatterFactory</code> for an
* <code>AbstractFormat</code> when it gains or loses focus. Although this
* can change based on the focus lost policy. If the focus lost
* policy is <code>JFormattedTextField.PERSIST</code>
* and the <code>JFormattedTextField</code> has been edited, the
* <code>AbstractFormatterFactory</code> will not be queried until the
* value has been commited. Similarly if the focus lost policy is
* <code>JFormattedTextField.COMMIT</code> and an exception
* is thrown from <code>stringToValue</code>, the
* <code>AbstractFormatterFactory</code> will not be querired when focus is
* lost or gained.
* <p>
* <code>JFormattedTextField.AbstractFormatter</code>
* is also responsible for determining when values are commited to
* the <code>JFormattedTextField</code>. Some
* <code>JFormattedTextField.AbstractFormatter</code>s will make new values
* available on every edit, and others will never commit the value. You can
* force the current value to be obtained
* from the current <code>JFormattedTextField.AbstractFormatter</code>
* by way of invoking <code>commitEdit</code>. <code>commitEdit</code> will
* be invoked whenever return is pressed in the
* <code>JFormattedTextField</code>.
* <p>
* If an <code>AbstractFormatterFactory</code> has not been explicitly
* set, one will be set based on the <code>Class</code> of the value type after
* <code>setValue</code> has been invoked (assuming value is non-null).
* For example, in the following code an appropriate
* <code>AbstractFormatterFactory</code> and <code>AbstractFormatter</code>
* will be created to handle formatting of numbers:
* <pre>
*   JFormattedTextField tf = new JFormattedTextField();
*   tf.setValue(new Number(100));
* </pre>
* <p>
* <strong>Warning:</strong> As the <code>AbstractFormatter</code> will
* typically install a <code>DocumentFilter</code> on the
* <code>Document</code>, and a <code>NavigationFilter</code> on the
* <code>JFormattedTextField</code> you should not install your own. If you do,
* you are likely to see odd behavior in that the editing policy of the
* <code>AbstractFormatter</code> will not be enforced.
* <p>
* <strong>Warning:</strong> Swing is not thread safe. For more
* information see <a
* href="package-summary.html#threading">Swing's Threading
* Policy</a>.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @since 1.4
*/
@:require(java4) extern class JFormattedTextField extends javax.swing.JTextField
{
	/**
	* Constant identifying that when focus is lost,
	* <code>commitEdit</code> should be invoked. If in commiting the
	* new value a <code>ParseException</code> is thrown, the invalid
	* value will remain.
	*
	* @see #setFocusLostBehavior
	*/
	public static var COMMIT(default, null) : Int;
	
	/**
	* Constant identifying that when focus is lost,
	* <code>commitEdit</code> should be invoked. If in commiting the new
	* value a <code>ParseException</code> is thrown, the value will be
	* reverted.
	*
	* @see #setFocusLostBehavior
	*/
	public static var COMMIT_OR_REVERT(default, null) : Int;
	
	/**
	* Constant identifying that when focus is lost, editing value should
	* be reverted to current value set on the
	* <code>JFormattedTextField</code>.
	*
	* @see #setFocusLostBehavior
	*/
	public static var REVERT(default, null) : Int;
	
	/**
	* Constant identifying that when focus is lost, the edited value
	* should be left.
	*
	* @see #setFocusLostBehavior
	*/
	public static var PERSIST(default, null) : Int;
	
	/**
	* Creates a <code>JFormattedTextField</code> with no
	* <code>AbstractFormatterFactory</code>. Use <code>setMask</code> or
	* <code>setFormatterFactory</code> to configure the
	* <code>JFormattedTextField</code> to edit a particular type of
	* value.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a JFormattedTextField with the specified value. This will
	* create an <code>AbstractFormatterFactory</code> based on the
	* type of <code>value</code>.
	*
	* @param value Initial value for the JFormattedTextField
	*/
	@:overload public function new(value : Dynamic) : Void;
	
	/**
	* Creates a <code>JFormattedTextField</code>. <code>format</code> is
	* wrapped in an appropriate <code>AbstractFormatter</code> which is
	* then wrapped in an <code>AbstractFormatterFactory</code>.
	*
	* @param format Format used to look up an AbstractFormatter
	*/
	@:overload public function new(format : java.text.Format) : Void;
	
	/**
	* Creates a <code>JFormattedTextField</code> with the specified
	* <code>AbstractFormatter</code>. The <code>AbstractFormatter</code>
	* is placed in an <code>AbstractFormatterFactory</code>.
	*
	* @param formatter AbstractFormatter to use for formatting.
	*/
	@:overload public function new(formatter : JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Creates a <code>JFormattedTextField</code> with the specified
	* <code>AbstractFormatterFactory</code>.
	*
	* @param factory AbstractFormatterFactory used for formatting.
	*/
	@:overload public function new(factory : JFormattedTextField_AbstractFormatterFactory) : Void;
	
	/**
	* Creates a <code>JFormattedTextField</code> with the specified
	* <code>AbstractFormatterFactory</code> and initial value.
	*
	* @param factory <code>AbstractFormatterFactory</code> used for
	*        formatting.
	* @param currentValue Initial value to use
	*/
	@:overload public function new(factory : JFormattedTextField_AbstractFormatterFactory, currentValue : Dynamic) : Void;
	
	/**
	* Sets the behavior when focus is lost. This will be one of
	* <code>JFormattedTextField.COMMIT_OR_REVERT</code>,
	* <code>JFormattedTextField.REVERT</code>,
	* <code>JFormattedTextField.COMMIT</code> or
	* <code>JFormattedTextField.PERSIST</code>
	* Note that some <code>AbstractFormatter</code>s may push changes as
	* they occur, so that the value of this will have no effect.
	* <p>
	* This will throw an <code>IllegalArgumentException</code> if the object
	* passed in is not one of the afore mentioned values.
	* <p>
	* The default value of this property is
	* <code>JFormattedTextField.COMMIT_OR_REVERT</code>.
	*
	* @param behavior Identifies behavior when focus is lost
	* @throws IllegalArgumentException if behavior is not one of the known
	*         values
	* @beaninfo
	*  enum: COMMIT         JFormattedTextField.COMMIT
	*        COMMIT_OR_REVERT JFormattedTextField.COMMIT_OR_REVERT
	*        REVERT         JFormattedTextField.REVERT
	*        PERSIST        JFormattedTextField.PERSIST
	*  description: Behavior when component loses focus
	*/
	@:overload public function setFocusLostBehavior(behavior : Int) : Void;
	
	/**
	* Returns the behavior when focus is lost. This will be one of
	* <code>COMMIT_OR_REVERT</code>,
	* <code>COMMIT</code>,
	* <code>REVERT</code> or
	* <code>PERSIST</code>
	* Note that some <code>AbstractFormatter</code>s may push changes as
	* they occur, so that the value of this will have no effect.
	*
	* @return returns behavior when focus is lost
	*/
	@:overload public function getFocusLostBehavior() : Int;
	
	/**
	* Sets the <code>AbstractFormatterFactory</code>.
	* <code>AbstractFormatterFactory</code> is
	* able to return an instance of <code>AbstractFormatter</code> that is
	* used to format a value for display, as well an enforcing an editing
	* policy.
	* <p>
	* If you have not explicitly set an <code>AbstractFormatterFactory</code>
	* by way of this method (or a constructor) an
	* <code>AbstractFormatterFactory</code> and consequently an
	* <code>AbstractFormatter</code> will be used based on the
	* <code>Class</code> of the value. <code>NumberFormatter</code> will
	* be used for <code>Number</code>s, <code>DateFormatter</code> will
	* be used for <code>Dates</code>, otherwise <code>DefaultFormatter</code>
	* will be used.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @param tf <code>AbstractFormatterFactory</code> used to lookup
	*          instances of <code>AbstractFormatter</code>
	* @beaninfo
	*       bound: true
	*   attribute: visualUpdate true
	* description: AbstractFormatterFactory, responsible for returning an
	*              AbstractFormatter that can format the current value.
	*/
	@:overload public function setFormatterFactory(tf : JFormattedTextField_AbstractFormatterFactory) : Void;
	
	/**
	* Returns the current <code>AbstractFormatterFactory</code>.
	*
	* @see #setFormatterFactory
	* @return <code>AbstractFormatterFactory</code> used to determine
	*         <code>AbstractFormatter</code>s
	*/
	@:overload public function getFormatterFactory() : JFormattedTextField_AbstractFormatterFactory;
	
	/**
	* Sets the current <code>AbstractFormatter</code>.
	* <p>
	* You should not normally invoke this, instead set the
	* <code>AbstractFormatterFactory</code> or set the value.
	* <code>JFormattedTextField</code> will
	* invoke this as the state of the <code>JFormattedTextField</code>
	* changes and requires the value to be reset.
	* <code>JFormattedTextField</code> passes in the
	* <code>AbstractFormatter</code> obtained from the
	* <code>AbstractFormatterFactory</code>.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @see #setFormatterFactory
	* @param format AbstractFormatter to use for formatting
	* @beaninfo
	*       bound: true
	*   attribute: visualUpdate true
	* description: TextFormatter, responsible for formatting the current value
	*/
	@:overload private function setFormatter(format : JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Returns the <code>AbstractFormatter</code> that is used to format and
	* parse the current value.
	*
	* @return AbstractFormatter used for formatting
	*/
	@:overload public function getFormatter() : JFormattedTextField_AbstractFormatter;
	
	/**
	* Sets the value that will be formatted by an
	* <code>AbstractFormatter</code> obtained from the current
	* <code>AbstractFormatterFactory</code>. If no
	* <code>AbstractFormatterFactory</code> has been specified, this will
	* attempt to create one based on the type of <code>value</code>.
	* <p>
	* The default value of this property is null.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @param value Current value to display
	* @beaninfo
	*       bound: true
	*   attribute: visualUpdate true
	* description: The value to be formatted.
	*/
	@:overload public function setValue(value : Dynamic) : Void;
	
	/**
	* Returns the last valid value. Based on the editing policy of
	* the <code>AbstractFormatter</code> this may not return the current
	* value. The currently edited value can be obtained by invoking
	* <code>commitEdit</code> followed by <code>getValue</code>.
	*
	* @return Last valid value
	*/
	@:overload public function getValue() : Dynamic;
	
	/**
	* Forces the current value to be taken from the
	* <code>AbstractFormatter</code> and set as the current value.
	* This has no effect if there is no current
	* <code>AbstractFormatter</code> installed.
	*
	* @throws ParseException if the <code>AbstractFormatter</code> is not able
	*         to format the current value
	*/
	@:overload public function commitEdit() : Void;
	
	/**
	* Returns true if the current value being edited is valid. The value of
	* this is managed by the current <code>AbstractFormatter</code>, as such
	* there is no public setter for it.
	*
	* @return true if the current value being edited is valid.
	*/
	@:overload public function isEditValid() : Bool;
	
	/**
	* Invoked when the user inputs an invalid value. This gives the
	* component a chance to provide feedback. The default
	* implementation beeps.
	*/
	@:overload private function invalidEdit() : Void;
	
	/**
	* Processes any input method events, such as
	* <code>InputMethodEvent.INPUT_METHOD_TEXT_CHANGED</code> or
	* <code>InputMethodEvent.CARET_POSITION_CHANGED</code>.
	*
	* @param e the <code>InputMethodEvent</code>
	* @see InputMethodEvent
	*/
	@:overload override private function processInputMethodEvent(e : java.awt.event.InputMethodEvent) : Void;
	
	/**
	* Processes any focus events, such as
	* <code>FocusEvent.FOCUS_GAINED</code> or
	* <code>FocusEvent.FOCUS_LOST</code>.
	*
	* @param e the <code>FocusEvent</code>
	* @see FocusEvent
	*/
	@:overload override private function processFocusEvent(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Fetches the command list for the editor.  This is
	* the list of commands supported by the plugged-in UI
	* augmented by the collection of commands that the
	* editor itself supports.  These are useful for binding
	* to events, such as in a keymap.
	*
	* @return the command list
	*/
	@:overload override public function getActions() : java.NativeArray<javax.swing.Action>;
	
	/**
	* Gets the class ID for a UI.
	*
	* @return the string "FormattedTextFieldUI"
	* @see JComponent#getUIClassID
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Associates the editor with a text document.
	* The currently registered factory is used to build a view for
	* the document, which gets displayed by the editor after revalidation.
	* A PropertyChange event ("document") is propagated to each listener.
	*
	* @param doc  the document to display/edit
	* @see #getDocument
	* @beaninfo
	*  description: the text document model
	*        bound: true
	*       expert: true
	*/
	@:overload override public function setDocument(doc : javax.swing.text.Document) : Void;
	
	
}
/**
* FOCUS_LOST behavior implementation
*/
@:native('javax$swing$JFormattedTextField$FocusLostHandler') @:internal extern class JFormattedTextField_FocusLostHandler implements java.lang.Runnable implements java.io.Serializable
{
	@:overload public function run() : Void;
	
	
}
/**
* Instances of <code>AbstractFormatterFactory</code> are used by
* <code>JFormattedTextField</code> to obtain instances of
* <code>AbstractFormatter</code> which in turn are used to format values.
* <code>AbstractFormatterFactory</code> can return different
* <code>AbstractFormatter</code>s based on the state of the
* <code>JFormattedTextField</code>, perhaps returning different
* <code>AbstractFormatter</code>s when the
* <code>JFormattedTextField</code> has focus vs when it
* doesn't have focus.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$JFormattedTextField$AbstractFormatterFactory') extern class JFormattedTextField_AbstractFormatterFactory
{
	/**
	* Returns an <code>AbstractFormatter</code> that can handle formatting
	* of the passed in <code>JFormattedTextField</code>.
	*
	* @param tf JFormattedTextField requesting AbstractFormatter
	* @return AbstractFormatter to handle formatting duties, a null
	*         return value implies the JFormattedTextField should behave
	*         like a normal JTextField
	*/
	@:overload @:abstract public function getFormatter(tf : JFormattedTextField) : JFormattedTextField_AbstractFormatter;
	
	
}
/**
* Instances of <code>AbstractFormatter</code> are used by
* <code>JFormattedTextField</code> to handle the conversion both
* from an Object to a String, and back from a String to an Object.
* <code>AbstractFormatter</code>s can also enfore editing policies,
* or navigation policies, or manipulate the
* <code>JFormattedTextField</code> in any way it sees fit to
* enforce the desired policy.
* <p>
* An <code>AbstractFormatter</code> can only be active in
* one <code>JFormattedTextField</code> at a time.
* <code>JFormattedTextField</code> invokes
* <code>install</code> when it is ready to use it followed
* by <code>uninstall</code> when done. Subclasses
* that wish to install additional state should override
* <code>install</code> and message super appropriately.
* <p>
* Subclasses must override the conversion methods
* <code>stringToValue</code> and <code>valueToString</code>. Optionally
* they can override <code>getActions</code>,
* <code>getNavigationFilter</code> and <code>getDocumentFilter</code>
* to restrict the <code>JFormattedTextField</code> in a particular
* way.
* <p>
* Subclasses that allow the <code>JFormattedTextField</code> to be in
* a temporarily invalid state should invoke <code>setEditValid</code>
* at the appropriate times.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$JFormattedTextField$AbstractFormatter') extern class JFormattedTextField_AbstractFormatter implements java.io.Serializable
{
	/**
	* Installs the <code>AbstractFormatter</code> onto a particular
	* <code>JFormattedTextField</code>.
	* This will invoke <code>valueToString</code> to convert the
	* current value from the <code>JFormattedTextField</code> to
	* a String. This will then install the <code>Action</code>s from
	* <code>getActions</code>, the <code>DocumentFilter</code>
	* returned from <code>getDocumentFilter</code> and the
	* <code>NavigationFilter</code> returned from
	* <code>getNavigationFilter</code> onto the
	* <code>JFormattedTextField</code>.
	* <p>
	* Subclasses will typically only need to override this if they
	* wish to install additional listeners on the
	* <code>JFormattedTextField</code>.
	* <p>
	* If there is a <code>ParseException</code> in converting the
	* current value to a String, this will set the text to an empty
	* String, and mark the <code>JFormattedTextField</code> as being
	* in an invalid state.
	* <p>
	* While this is a public method, this is typically only useful
	* for subclassers of <code>JFormattedTextField</code>.
	* <code>JFormattedTextField</code> will invoke this method at
	* the appropriate times when the value changes, or its internal
	* state changes.  You will only need to invoke this yourself if
	* you are subclassing <code>JFormattedTextField</code> and
	* installing/uninstalling <code>AbstractFormatter</code> at a
	* different time than <code>JFormattedTextField</code> does.
	*
	* @param ftf JFormattedTextField to format for, may be null indicating
	*            uninstall from current JFormattedTextField.
	*/
	@:overload public function install(ftf : JFormattedTextField) : Void;
	
	/**
	* Uninstalls any state the <code>AbstractFormatter</code> may have
	* installed on the <code>JFormattedTextField</code>. This resets the
	* <code>DocumentFilter</code>, <code>NavigationFilter</code>
	* and additional <code>Action</code>s installed on the
	* <code>JFormattedTextField</code>.
	*/
	@:overload public function uninstall() : Void;
	
	/**
	* Parses <code>text</code> returning an arbitrary Object. Some
	* formatters may return null.
	*
	* @throws ParseException if there is an error in the conversion
	* @param text String to convert
	* @return Object representation of text
	*/
	@:overload @:abstract public function stringToValue(text : String) : Dynamic;
	
	/**
	* Returns the string value to display for <code>value</code>.
	*
	* @throws ParseException if there is an error in the conversion
	* @param value Value to convert
	* @return String representation of value
	*/
	@:overload @:abstract public function valueToString(value : Dynamic) : String;
	
	/**
	* Returns the current <code>JFormattedTextField</code> the
	* <code>AbstractFormatter</code> is installed on.
	*
	* @return JFormattedTextField formatting for.
	*/
	@:overload private function getFormattedTextField() : JFormattedTextField;
	
	/**
	* This should be invoked when the user types an invalid character.
	* This forwards the call to the current JFormattedTextField.
	*/
	@:overload private function invalidEdit() : Void;
	
	/**
	* Invoke this to update the <code>editValid</code> property of the
	* <code>JFormattedTextField</code>. If you an enforce a policy
	* such that the <code>JFormattedTextField</code> is always in a
	* valid state, you will never need to invoke this.
	*
	* @param valid Valid state of the JFormattedTextField
	*/
	@:overload private function setEditValid(valid : Bool) : Void;
	
	/**
	* Subclass and override if you wish to provide a custom set of
	* <code>Action</code>s. <code>install</code> will install these
	* on the <code>JFormattedTextField</code>'s <code>ActionMap</code>.
	*
	* @return Array of Actions to install on JFormattedTextField
	*/
	@:overload private function getActions() : java.NativeArray<javax.swing.Action>;
	
	/**
	* Subclass and override if you wish to provide a
	* <code>DocumentFilter</code> to restrict what can be input.
	* <code>install</code> will install the returned value onto
	* the <code>JFormattedTextField</code>.
	*
	* @return DocumentFilter to restrict edits
	*/
	@:overload private function getDocumentFilter() : javax.swing.text.DocumentFilter;
	
	/**
	* Subclass and override if you wish to provide a filter to restrict
	* where the user can navigate to.
	* <code>install</code> will install the returned value onto
	* the <code>JFormattedTextField</code>.
	*
	* @return NavigationFilter to restrict navigation
	*/
	@:overload private function getNavigationFilter() : javax.swing.text.NavigationFilter;
	
	/**
	* Clones the <code>AbstractFormatter</code>. The returned instance
	* is not associated with a <code>JFormattedTextField</code>.
	*
	* @return Copy of the AbstractFormatter
	*/
	@:overload private function clone() : Dynamic;
	
	
}
/**
* Used to commit the edit. This extends JTextField.NotifyAction
* so that <code>isEnabled</code> is true while a JFormattedTextField
* has focus, and extends <code>actionPerformed</code> to invoke
* commitEdit.
*/
@:native('javax$swing$JFormattedTextField$CommitAction') @:internal extern class JFormattedTextField_CommitAction extends javax.swing.JTextField.JTextField_NotifyAction
{
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* CancelAction will reset the value in the JFormattedTextField when
* <code>actionPerformed</code> is invoked. It will only be
* enabled if the focused component is an instance of
* JFormattedTextField.
*/
@:native('javax$swing$JFormattedTextField$CancelAction') @:internal extern class JFormattedTextField_CancelAction extends javax.swing.text.TextAction
{
	@:overload public function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* Sets the dirty state as the document changes.
*/
@:native('javax$swing$JFormattedTextField$DocumentHandler') @:internal extern class JFormattedTextField_DocumentHandler implements javax.swing.event.DocumentListener implements java.io.Serializable
{
	@:overload public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	
}
