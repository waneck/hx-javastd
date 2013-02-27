package javax.swing;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class JProgressBar extends javax.swing.JComponent implements javax.swing.SwingConstants implements javax.accessibility.Accessible
{
	/**
	* Whether the progress bar is horizontal or vertical.
	* The default is <code>HORIZONTAL</code>.
	*
	* @see #setOrientation
	*/
	private var orientation : Int;
	
	/**
	* The object that holds the data for the progress bar.
	*
	* @see #setModel
	*/
	private var model : javax.swing.BoundedRangeModel;
	
	/**
	* An optional string that can be displayed on the progress bar.
	* The default is <code>null</code>. Setting this to a non-<code>null</code>
	* value does not imply that the string will be displayed.
	* To display the string, {@code paintString} must be {@code true}.
	*
	* @see #setString
	* @see #setStringPainted
	*/
	private var progressString : String;
	
	/**
	* Whether to display a string of text on the progress bar.
	* The default is <code>false</code>.
	* Setting this to <code>true</code> causes a textual
	* display of the progress to be rendered on the progress bar. If
	* the <code>progressString</code> is <code>null</code>,
	* the percentage of completion is displayed on the progress bar.
	* Otherwise, the <code>progressString</code> is
	* rendered on the progress bar.
	*
	* @see #setStringPainted
	* @see #setString
	*/
	private var paintString : Bool;
	
	/**
	* Only one <code>ChangeEvent</code> is needed per instance since the
	* event's only interesting property is the immutable source, which
	* is the progress bar.
	* The event is lazily created the first time that an
	* event notification is fired.
	*
	* @see #fireStateChanged
	*/
	@:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	/**
	* Listens for change events sent by the progress bar's model,
	* redispatching them
	* to change-event listeners registered upon
	* this progress bar.
	*
	* @see #createChangeListener
	*/
	private var changeListener : javax.swing.event.ChangeListener;
	
	/**
	* Creates a horizontal progress bar
	* that displays a border but no progress string.
	* The initial and minimum values are 0,
	* and the maximum is 100.
	*
	* @see #setOrientation
	* @see #setBorderPainted
	* @see #setStringPainted
	* @see #setString
	* @see #setIndeterminate
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a progress bar with the specified orientation,
	* which can be
	* either {@code SwingConstants.VERTICAL} or
	* {@code SwingConstants.HORIZONTAL}.
	* By default, a border is painted but a progress string is not.
	* The initial and minimum values are 0,
	* and the maximum is 100.
	*
	* @param orient  the desired orientation of the progress bar
	* @throws IllegalArgumentException if {@code orient} is an illegal value
	*
	* @see #setOrientation
	* @see #setBorderPainted
	* @see #setStringPainted
	* @see #setString
	* @see #setIndeterminate
	*/
	@:overload public function new(orient : Int) : Void;
	
	/**
	* Creates a horizontal progress bar
	* with the specified minimum and maximum.
	* Sets the initial value of the progress bar to the specified minimum.
	* By default, a border is painted but a progress string is not.
	* <p>
	* The <code>BoundedRangeModel</code> that holds the progress bar's data
	* handles any issues that may arise from improperly setting the
	* minimum, initial, and maximum values on the progress bar.
	* See the {@code BoundedRangeModel} documentation for details.
	*
	* @param min  the minimum value of the progress bar
	* @param max  the maximum value of the progress bar
	*
	* @see BoundedRangeModel
	* @see #setOrientation
	* @see #setBorderPainted
	* @see #setStringPainted
	* @see #setString
	* @see #setIndeterminate
	*/
	@:overload public function new(min : Int, max : Int) : Void;
	
	/**
	* Creates a progress bar using the specified orientation,
	* minimum, and maximum.
	* By default, a border is painted but a progress string is not.
	* Sets the initial value of the progress bar to the specified minimum.
	* <p>
	* The <code>BoundedRangeModel</code> that holds the progress bar's data
	* handles any issues that may arise from improperly setting the
	* minimum, initial, and maximum values on the progress bar.
	* See the {@code BoundedRangeModel} documentation for details.
	*
	* @param orient  the desired orientation of the progress bar
	* @param min  the minimum value of the progress bar
	* @param max  the maximum value of the progress bar
	* @throws IllegalArgumentException if {@code orient} is an illegal value
	*
	* @see BoundedRangeModel
	* @see #setOrientation
	* @see #setBorderPainted
	* @see #setStringPainted
	* @see #setString
	* @see #setIndeterminate
	*/
	@:overload public function new(orient : Int, min : Int, max : Int) : Void;
	
	/**
	* Creates a horizontal progress bar
	* that uses the specified model
	* to hold the progress bar's data.
	* By default, a border is painted but a progress string is not.
	*
	* @param newModel  the data model for the progress bar
	*
	* @see #setOrientation
	* @see #setBorderPainted
	* @see #setStringPainted
	* @see #setString
	* @see #setIndeterminate
	*/
	@:overload public function new(newModel : javax.swing.BoundedRangeModel) : Void;
	
	/**
	* Returns {@code SwingConstants.VERTICAL} or
	* {@code SwingConstants.HORIZONTAL}, depending on the orientation
	* of the progress bar. The default orientation is
	* {@code SwingConstants.HORIZONTAL}.
	*
	* @return <code>HORIZONTAL</code> or <code>VERTICAL</code>
	* @see #setOrientation
	*/
	@:overload public function getOrientation() : Int;
	
	/**
	* Sets the progress bar's orientation to <code>newOrientation</code>,
	* which must be {@code SwingConstants.VERTICAL} or
	* {@code SwingConstants.HORIZONTAL}. The default orientation
	* is {@code SwingConstants.HORIZONTAL}.
	*
	* @param  newOrientation  <code>HORIZONTAL</code> or <code>VERTICAL</code>
	* @exception      IllegalArgumentException    if <code>newOrientation</code>
	*                                              is an illegal value
	* @see #getOrientation
	*
	* @beaninfo
	*    preferred: true
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Set the progress bar's orientation.
	*/
	@:overload public function setOrientation(newOrientation : Int) : Void;
	
	/**
	* Returns the value of the <code>stringPainted</code> property.
	*
	* @return the value of the <code>stringPainted</code> property
	* @see    #setStringPainted
	* @see    #setString
	*/
	@:overload public function isStringPainted() : Bool;
	
	/**
	* Sets the value of the <code>stringPainted</code> property,
	* which determines whether the progress bar
	* should render a progress string.
	* The default is <code>false</code>, meaning
	* no string is painted.
	* Some look and feels might not support progress strings
	* or might support them only when the progress bar is in determinate mode.
	*
	* @param   b       <code>true</code> if the progress bar should render a string
	* @see     #isStringPainted
	* @see     #setString
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Whether the progress bar should render a string.
	*/
	@:overload public function setStringPainted(b : Bool) : Void;
	
	/**
	* Returns a {@code String} representation of the current progress.
	* By default, this returns a simple percentage {@code String} based on
	* the value returned from {@code getPercentComplete}.  An example
	* would be the "42%".  You can change this by calling {@code setString}.
	*
	* @return the value of the progress string, or a simple percentage string
	*         if the progress string is {@code null}
	* @see    #setString
	*/
	@:overload public function getString() : String;
	
	/**
	* Sets the value of the progress string. By default,
	* this string is <code>null</code>, implying the built-in behavior of
	* using a simple percent string.
	* If you have provided a custom progress string and want to revert to
	* the built-in behavior, set the string back to <code>null</code>.
	* <p>
	* The progress string is painted only if
	* the <code>isStringPainted</code> method returns <code>true</code>.
	*
	* @param  s       the value of the progress string
	* @see    #getString
	* @see    #setStringPainted
	* @see    #isStringPainted
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Specifies the progress string to paint
	*/
	@:overload public function setString(s : String) : Void;
	
	/**
	* Returns the percent complete for the progress bar.
	* Note that this number is between 0.0 and 1.0.
	*
	* @return the percent complete for this progress bar
	*/
	@:overload public function getPercentComplete() : Float;
	
	/**
	* Returns the <code>borderPainted</code> property.
	*
	* @return the value of the <code>borderPainted</code> property
	* @see    #setBorderPainted
	* @beaninfo
	*  description: Does the progress bar paint its border
	*/
	@:overload public function isBorderPainted() : Bool;
	
	/**
	* Sets the <code>borderPainted</code> property, which is
	* <code>true</code> if the progress bar should paint its border.
	* The default value for this property is <code>true</code>.
	* Some look and feels might not implement painted borders;
	* they will ignore this property.
	*
	* @param   b       <code>true</code> if the progress bar
	*                  should paint its border;
	*                  otherwise, <code>false</code>
	* @see     #isBorderPainted
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Whether the progress bar should paint its border.
	*/
	@:overload public function setBorderPainted(b : Bool) : Void;
	
	/**
	* Paints the progress bar's border if the <code>borderPainted</code>
	* property is <code>true</code>.
	*
	* @param g  the <code>Graphics</code> context within which to paint the border
	* @see #paint
	* @see #setBorder
	* @see #isBorderPainted
	* @see #setBorderPainted
	*/
	@:overload override private function paintBorder(g : java.awt.Graphics) : Void;
	
	/**
	* Returns the look-and-feel object that renders this component.
	*
	* @return the <code>ProgressBarUI</code> object that renders this component
	*/
	@:overload public function getUI() : javax.swing.plaf.ProgressBarUI;
	
	/**
	* Sets the look-and-feel object that renders this component.
	*
	* @param ui  a <code>ProgressBarUI</code> object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.ProgressBarUI) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the look-and-feel class that renders this component.
	*
	* @return the string "ProgressBarUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	* @beaninfo
	*        expert: true
	*   description: A string that specifies the name of the look-and-feel class.
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Subclasses that want to handle change events
	* from the model differently
	* can override this to return
	* an instance of a custom <code>ChangeListener</code> implementation.
	* The default {@code ChangeListener} simply calls the
	* {@code fireStateChanged} method to forward {@code ChangeEvent}s
	* to the {@code ChangeListener}s that have been added directly to the
	* progress bar.
	*
	* @see #changeListener
	* @see #fireStateChanged
	* @see javax.swing.event.ChangeListener
	* @see javax.swing.BoundedRangeModel
	*/
	@:overload private function createChangeListener() : javax.swing.event.ChangeListener;
	
	/**
	* Adds the specified <code>ChangeListener</code> to the progress bar.
	*
	* @param l the <code>ChangeListener</code> to add
	*/
	@:overload public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a <code>ChangeListener</code> from the progress bar.
	*
	* @param l the <code>ChangeListener</code> to remove
	*/
	@:overload public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>ChangeListener</code>s added
	* to this progress bar with <code>addChangeListener</code>.
	*
	* @return all of the <code>ChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Send a {@code ChangeEvent}, whose source is this {@code JProgressBar}, to
	* all {@code ChangeListener}s that have registered interest in
	* {@code ChangeEvent}s.
	* This method is called each time a {@code ChangeEvent} is received from
	* the model.
	* <p>
	*
	* The event instance is created if necessary, and stored in
	* {@code changeEvent}.
	*
	* @see #addChangeListener
	* @see EventListenerList
	*/
	@:overload private function fireStateChanged() : Void;
	
	/**
	* Returns the data model used by this progress bar.
	*
	* @return the <code>BoundedRangeModel</code> currently in use
	* @see #setModel
	* @see    BoundedRangeModel
	*/
	@:overload public function getModel() : javax.swing.BoundedRangeModel;
	
	/**
	* Sets the data model used by the <code>JProgressBar</code>.
	* Note that the {@code BoundedRangeModel}'s {@code extent} is not used,
	* and is set to {@code 0}.
	*
	* @param  newModel the <code>BoundedRangeModel</code> to use
	*
	* @beaninfo
	*    expert: true
	* description: The data model used by the JProgressBar.
	*/
	@:overload public function setModel(newModel : javax.swing.BoundedRangeModel) : Void;
	
	/**
	* Returns the progress bar's current {@code value}
	* from the <code>BoundedRangeModel</code>.
	* The value is always between the
	* minimum and maximum values, inclusive.
	*
	* @return  the current value of the progress bar
	* @see     #setValue
	* @see     BoundedRangeModel#getValue
	*/
	@:overload public function getValue() : Int;
	
	/**
	* Returns the progress bar's {@code minimum} value
	* from the <code>BoundedRangeModel</code>.
	*
	* @return  the progress bar's minimum value
	* @see     #setMinimum
	* @see     BoundedRangeModel#getMinimum
	*/
	@:overload public function getMinimum() : Int;
	
	/**
	* Returns the progress bar's {@code maximum} value
	* from the <code>BoundedRangeModel</code>.
	*
	* @return  the progress bar's maximum value
	* @see     #setMaximum
	* @see     BoundedRangeModel#getMaximum
	*/
	@:overload public function getMaximum() : Int;
	
	/**
	* Sets the progress bar's current value to {@code n}.  This method
	* forwards the new value to the model.
	* <p>
	* The data model (an instance of {@code BoundedRangeModel})
	* handles any mathematical
	* issues arising from assigning faulty values.  See the
	* {@code BoundedRangeModel} documentation for details.
	* <p>
	* If the new value is different from the previous value,
	* all change listeners are notified.
	*
	* @param   n       the new value
	* @see     #getValue
	* @see     #addChangeListener
	* @see     BoundedRangeModel#setValue
	* @beaninfo
	*    preferred: true
	*  description: The progress bar's current value.
	*/
	@:overload public function setValue(n : Int) : Void;
	
	/**
	* Sets the progress bar's minimum value
	* (stored in the progress bar's data model) to <code>n</code>.
	* <p>
	* The data model (a <code>BoundedRangeModel</code> instance)
	* handles any mathematical
	* issues arising from assigning faulty values.
	* See the {@code BoundedRangeModel} documentation for details.
	* <p>
	* If the minimum value is different from the previous minimum,
	* all change listeners are notified.
	*
	* @param  n       the new minimum
	* @see    #getMinimum
	* @see    #addChangeListener
	* @see    BoundedRangeModel#setMinimum
	* @beaninfo
	*  preferred: true
	* description: The progress bar's minimum value.
	*/
	@:overload public function setMinimum(n : Int) : Void;
	
	/**
	* Sets the progress bar's maximum value
	* (stored in the progress bar's data model) to <code>n</code>.
	* <p>
	* The underlying <code>BoundedRangeModel</code> handles any mathematical
	* issues arising from assigning faulty values.
	* See the {@code BoundedRangeModel} documentation for details.
	* <p>
	* If the maximum value is different from the previous maximum,
	* all change listeners are notified.
	*
	* @param  n       the new maximum
	* @see    #getMaximum
	* @see    #addChangeListener
	* @see    BoundedRangeModel#setMaximum
	* @beaninfo
	*    preferred: true
	*  description: The progress bar's maximum value.
	*/
	@:overload public function setMaximum(n : Int) : Void;
	
	/**
	* Sets the <code>indeterminate</code> property of the progress bar,
	* which determines whether the progress bar is in determinate
	* or indeterminate mode.
	* An indeterminate progress bar continuously displays animation
	* indicating that an operation of unknown length is occurring.
	* By default, this property is <code>false</code>.
	* Some look and feels might not support indeterminate progress bars;
	* they will ignore this property.
	*
	* <p>
	*
	* See
	* <a href="http://java.sun.com/docs/books/tutorial/uiswing/components/progress.html" target="_top">How to Monitor Progress</a>
	* for examples of using indeterminate progress bars.
	*
	* @param newValue  <code>true</code> if the progress bar
	*                  should change to indeterminate mode;
	*                  <code>false</code> if it should revert to normal.
	*
	* @see #isIndeterminate
	* @see javax.swing.plaf.basic.BasicProgressBarUI
	*
	* @since 1.4
	*
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Set whether the progress bar is indeterminate (true)
	*               or normal (false).
	*/
	@:require(java4) @:overload public function setIndeterminate(newValue : Bool) : Void;
	
	/**
	* Returns the value of the <code>indeterminate</code> property.
	*
	* @return the value of the <code>indeterminate</code> property
	* @see    #setIndeterminate
	*
	* @since 1.4
	*
	* @beaninfo
	*  description: Is the progress bar indeterminate (true)
	*               or normal (false)?
	*/
	@:require(java4) @:overload public function isIndeterminate() : Bool;
	
	/**
	* Returns a string representation of this <code>JProgressBar</code>.
	* This method is intended to be used only for debugging purposes. The
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JProgressBar</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* <code>JProgressBar</code>. For progress bars, the
	* <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleJProgressBar</code>.
	* A new <code>AccessibleJProgressBar</code> instance is created if necessary.
	*
	* @return an <code>AccessibleJProgressBar</code> that serves as the
	*         <code>AccessibleContext</code> of this <code>JProgressBar</code>
	* @beaninfo
	*       expert: true
	*  description: The AccessibleContext associated with this ProgressBar.
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/* We pass each Change event to the listeners with the
* the progress bar as the event source.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JProgressBar$ModelListener') @:internal extern class JProgressBar_ModelListener implements javax.swing.event.ChangeListener implements java.io.Serializable
{
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JProgressBar</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to progress bar user-interface
* elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JProgressBar$AccessibleJProgressBar') extern class JProgressBar_AccessibleJProgressBar extends AccessibleJComponent implements javax.accessibility.AccessibleValue
{
	/**
	* Gets the state set of this object.
	*
	* @return an instance of AccessibleState containing the current state
	* of the object
	* @see AccessibleState
	*/
	@:overload public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the <code>AccessibleValue</code> associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* returns this object, which is responsible for implementing the
	* <code>AccessibleValue</code> interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Gets the accessible value of this object.
	*
	* @return the current value of this object
	*/
	@:overload public function getCurrentAccessibleValue() : java.lang.Number;
	
	/**
	* Sets the value of this object as a <code>Number</code>.
	*
	* @return <code>true</code> if the value was set
	*/
	@:overload public function setCurrentAccessibleValue(n : java.lang.Number) : Bool;
	
	/**
	* Gets the minimum accessible value of this object.
	*
	* @return the minimum value of this object
	*/
	@:overload public function getMinimumAccessibleValue() : java.lang.Number;
	
	/**
	* Gets the maximum accessible value of this object.
	*
	* @return the maximum value of this object
	*/
	@:overload public function getMaximumAccessibleValue() : java.lang.Number;
	
	
}
