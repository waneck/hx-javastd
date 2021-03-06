package javax.accessibility;
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
extern class AccessibleContext
{
	/**
	* Constant used to determine when the accessibleName property has
	* changed.  The old value in the PropertyChangeEvent will be the old
	* accessibleName and the new value will be the new accessibleName.
	*
	* @see #getAccessibleName
	* @see #addPropertyChangeListener
	*/
	@:public @:static @:final public static var ACCESSIBLE_NAME_PROPERTY(default, null) : String;
	
	/**
	* Constant used to determine when the accessibleDescription property has
	* changed.  The old value in the PropertyChangeEvent will be the
	* old accessibleDescription and the new value will be the new
	* accessibleDescription.
	*
	* @see #getAccessibleDescription
	* @see #addPropertyChangeListener
	*/
	@:public @:static @:final public static var ACCESSIBLE_DESCRIPTION_PROPERTY(default, null) : String;
	
	/**
	* Constant used to determine when the accessibleStateSet property has
	* changed.  The old value will be the old AccessibleState and the new
	* value will be the new AccessibleState in the accessibleStateSet.
	* For example, if a component that supports the vertical and horizontal
	* states changes its orientation from vertical to horizontal, the old
	* value will be AccessibleState.VERTICAL and the new value will be
	* AccessibleState.HORIZONTAL.  Please note that either value can also
	* be null.  For example, when a component changes from being enabled
	* to disabled, the old value will be AccessibleState.ENABLED
	* and the new value will be null.
	*
	* @see #getAccessibleStateSet
	* @see AccessibleState
	* @see AccessibleStateSet
	* @see #addPropertyChangeListener
	*/
	@:public @:static @:final public static var ACCESSIBLE_STATE_PROPERTY(default, null) : String;
	
	/**
	* Constant used to determine when the accessibleValue property has
	* changed.  The old value in the PropertyChangeEvent will be a Number
	* representing the old value and the new value will be a Number
	* representing the new value
	*
	* @see #getAccessibleValue
	* @see #addPropertyChangeListener
	*/
	@:public @:static @:final public static var ACCESSIBLE_VALUE_PROPERTY(default, null) : String;
	
	/**
	* Constant used to determine when the accessibleSelection has changed.
	* The old and new values in the PropertyChangeEvent are currently
	* reserved for future use.
	*
	* @see #getAccessibleSelection
	* @see #addPropertyChangeListener
	*/
	@:public @:static @:final public static var ACCESSIBLE_SELECTION_PROPERTY(default, null) : String;
	
	/**
	* Constant used to determine when the accessibleText caret has changed.
	* The old value in the PropertyChangeEvent will be an
	* integer representing the old caret position, and the new value will
	* be an integer representing the new/current caret position.
	*
	* @see #addPropertyChangeListener
	*/
	@:public @:static @:final public static var ACCESSIBLE_CARET_PROPERTY(default, null) : String;
	
	/**
	* Constant used to determine when the visual appearance of the object
	* has changed.  The old and new values in the PropertyChangeEvent are
	* currently reserved for future use.
	*
	* @see #addPropertyChangeListener
	*/
	@:public @:static @:final public static var ACCESSIBLE_VISIBLE_DATA_PROPERTY(default, null) : String;
	
	/**
	* Constant used to determine when Accessible children are added/removed
	* from the object.  If an Accessible child is being added, the old
	* value will be null and the new value will be the Accessible child.  If an
	* Accessible child is being removed, the old value will be the Accessible
	* child, and the new value will be null.
	*
	* @see #addPropertyChangeListener
	*/
	@:public @:static @:final public static var ACCESSIBLE_CHILD_PROPERTY(default, null) : String;
	
	/**
	* Constant used to determine when the active descendant of a component
	* has changed.  The active descendant is used for objects such as
	* list, tree, and table, which may have transient children.  When the
	* active descendant has changed, the old value of the property change
	* event will be the Accessible representing the previous active child, and
	* the new value will be the Accessible representing the current active
	* child.
	*
	* @see #addPropertyChangeListener
	*/
	@:public @:static @:final public static var ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY(default, null) : String;
	
	/**
	* Constant used to indicate that the table caption has changed
	* The old value in the PropertyChangeEvent will be an Accessible
	* representing the previous table caption and the new value will
	* be an Accessible representing the new table caption.
	* @see Accessible
	* @see AccessibleTable
	*/
	@:public @:static @:final public static var ACCESSIBLE_TABLE_CAPTION_CHANGED(default, null) : String;
	
	/**
	* Constant used to indicate that the table summary has changed
	* The old value in the PropertyChangeEvent will be an Accessible
	* representing the previous table summary and the new value will
	* be an Accessible representing the new table summary.
	* @see Accessible
	* @see AccessibleTable
	*/
	@:public @:static @:final public static var ACCESSIBLE_TABLE_SUMMARY_CHANGED(default, null) : String;
	
	/**
	* Constant used to indicate that table data has changed.
	* The old value in the PropertyChangeEvent will be null and the
	* new value will be an AccessibleTableModelChange representing
	* the table change.
	* @see AccessibleTable
	* @see AccessibleTableModelChange
	*/
	@:public @:static @:final public static var ACCESSIBLE_TABLE_MODEL_CHANGED(default, null) : String;
	
	/**
	* Constant used to indicate that the row header has changed
	* The old value in the PropertyChangeEvent will be null and the
	* new value will be an AccessibleTableModelChange representing
	* the header change.
	* @see AccessibleTable
	* @see AccessibleTableModelChange
	*/
	@:public @:static @:final public static var ACCESSIBLE_TABLE_ROW_HEADER_CHANGED(default, null) : String;
	
	/**
	* Constant used to indicate that the row description has changed
	* The old value in the PropertyChangeEvent will be null and the
	* new value will be an Integer representing the row index.
	* @see AccessibleTable
	*/
	@:public @:static @:final public static var ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED(default, null) : String;
	
	/**
	* Constant used to indicate that the column header has changed
	* The old value in the PropertyChangeEvent will be null and the
	* new value will be an AccessibleTableModelChange representing
	* the header change.
	* @see AccessibleTable
	* @see AccessibleTableModelChange
	*/
	@:public @:static @:final public static var ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED(default, null) : String;
	
	/**
	* Constant used to indicate that the column description has changed
	* The old value in the PropertyChangeEvent will be null and the
	* new value will be an Integer representing the column index.
	* @see AccessibleTable
	*/
	@:public @:static @:final public static var ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED(default, null) : String;
	
	/**
	* Constant used to indicate that the supported set of actions
	* has changed.  The old value in the PropertyChangeEvent will
	* be an Integer representing the old number of actions supported
	* and the new value will be an Integer representing the new
	* number of actions supported.
	* @see AccessibleAction
	*/
	@:public @:static @:final public static var ACCESSIBLE_ACTION_PROPERTY(default, null) : String;
	
	/**
	* Constant used to indicate that a hypertext element has received focus.
	* The old value in the PropertyChangeEvent will be an Integer
	* representing the start index in the document of the previous element
	* that had focus and the new value will be an Integer representing
	* the start index in the document of the current element that has
	* focus.  A value of -1 indicates that an element does not or did
	* not have focus.
	* @see AccessibleHyperlink
	*/
	@:public @:static @:final public static var ACCESSIBLE_HYPERTEXT_OFFSET(default, null) : String;
	
	/**
	* PropertyChangeEvent which indicates that text has changed.
	* <br>
	* For text insertion, the oldValue is null and the newValue
	* is an AccessibleTextSequence specifying the text that was
	* inserted.
	* <br>
	* For text deletion, the oldValue is an AccessibleTextSequence
	* specifying the text that was deleted and the newValue is null.
	* <br>
	* For text replacement, the oldValue is an AccessibleTextSequence
	* specifying the old text and the newValue is an AccessibleTextSequence
	* specifying the new text.
	*
	* @see #getAccessibleText
	* @see #addPropertyChangeListener
	* @see AccessibleTextSequence
	*/
	@:public @:static @:final public static var ACCESSIBLE_TEXT_PROPERTY(default, null) : String;
	
	/**
	* PropertyChangeEvent which indicates that a significant change
	* has occurred to the children of a component like a tree or text.
	* This change notifies the event listener that it needs to
	* reacquire the state of the subcomponents. The oldValue is
	* null and the newValue is the component whose children have
	* become invalid.
	*
	* @see #getAccessibleText
	* @see #addPropertyChangeListener
	* @see AccessibleTextSequence
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var ACCESSIBLE_INVALIDATE_CHILDREN(default, null) : String;
	
	/**
	* PropertyChangeEvent which indicates that text attributes have changed.
	* <br>
	* For attribute insertion, the oldValue is null and the newValue
	* is an AccessibleAttributeSequence specifying the attributes that were
	* inserted.
	* <br>
	* For attribute deletion, the oldValue is an AccessibleAttributeSequence
	* specifying the attributes that were deleted and the newValue is null.
	* <br>
	* For attribute replacement, the oldValue is an AccessibleAttributeSequence
	* specifying the old attributes and the newValue is an
	* AccessibleAttributeSequence specifying the new attributes.
	*
	* @see #getAccessibleText
	* @see #addPropertyChangeListener
	* @see AccessibleAttributeSequence
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED(default, null) : String;
	
	/**
	* PropertyChangeEvent which indicates that a change has occurred
	* in a component's bounds.
	* The oldValue is the old component bounds and the newValue is
	* the new component bounds.
	*
	* @see #addPropertyChangeListener
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var ACCESSIBLE_COMPONENT_BOUNDS_CHANGED(default, null) : String;
	
	/**
	* The accessible parent of this object.
	*
	* @see #getAccessibleParent
	* @see #setAccessibleParent
	*/
	@:protected private var accessibleParent : javax.accessibility.Accessible;
	
	/**
	* A localized String containing the name of the object.
	*
	* @see #getAccessibleName
	* @see #setAccessibleName
	*/
	@:protected private var accessibleName : String;
	
	/**
	* A localized String containing the description of the object.
	*
	* @see #getAccessibleDescription
	* @see #setAccessibleDescription
	*/
	@:protected private var accessibleDescription : String;
	
	/**
	* Gets the accessibleName property of this object.  The accessibleName
	* property of an object is a localized String that designates the purpose
	* of the object.  For example, the accessibleName property of a label
	* or button might be the text of the label or button itself.  In the
	* case of an object that doesn't display its name, the accessibleName
	* should still be set.  For example, in the case of a text field used
	* to enter the name of a city, the accessibleName for the en_US locale
	* could be 'city.'
	*
	* @return the localized name of the object; null if this
	* object does not have a name
	*
	* @see #setAccessibleName
	*/
	@:overload @:public public function getAccessibleName() : String;
	
	/**
	* Sets the localized accessible name of this object.  Changing the
	* name will cause a PropertyChangeEvent to be fired for the
	* ACCESSIBLE_NAME_PROPERTY property.
	*
	* @param s the new localized name of the object.
	*
	* @see #getAccessibleName
	* @see #addPropertyChangeListener
	*
	* @beaninfo
	*    preferred:   true
	*    description: Sets the accessible name for the component.
	*/
	@:overload @:public public function setAccessibleName(s : String) : Void;
	
	/**
	* Gets the accessibleDescription property of this object.  The
	* accessibleDescription property of this object is a short localized
	* phrase describing the purpose of the object.  For example, in the
	* case of a 'Cancel' button, the accessibleDescription could be
	* 'Ignore changes and close dialog box.'
	*
	* @return the localized description of the object; null if
	* this object does not have a description
	*
	* @see #setAccessibleDescription
	*/
	@:overload @:public public function getAccessibleDescription() : String;
	
	/**
	* Sets the accessible description of this object.  Changing the
	* name will cause a PropertyChangeEvent to be fired for the
	* ACCESSIBLE_DESCRIPTION_PROPERTY property.
	*
	* @param s the new localized description of the object
	*
	* @see #setAccessibleName
	* @see #addPropertyChangeListener
	*
	* @beaninfo
	*    preferred:   true
	*    description: Sets the accessible description for the component.
	*/
	@:overload @:public public function setAccessibleDescription(s : String) : Void;
	
	/**
	* Gets the role of this object.  The role of the object is the generic
	* purpose or use of the class of this object.  For example, the role
	* of a push button is AccessibleRole.PUSH_BUTTON.  The roles in
	* AccessibleRole are provided so component developers can pick from
	* a set of predefined roles.  This enables assistive technologies to
	* provide a consistent interface to various tweaked subclasses of
	* components (e.g., use AccessibleRole.PUSH_BUTTON for all components
	* that act like a push button) as well as distinguish between sublasses
	* that behave differently (e.g., AccessibleRole.CHECK_BOX for check boxes
	* and AccessibleRole.RADIO_BUTTON for radio buttons).
	* <p>Note that the AccessibleRole class is also extensible, so
	* custom component developers can define their own AccessibleRole's
	* if the set of predefined roles is inadequate.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload @:public @:abstract public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the state set of this object.  The AccessibleStateSet of an object
	* is composed of a set of unique AccessibleStates.  A change in the
	* AccessibleStateSet of an object will cause a PropertyChangeEvent to
	* be fired for the ACCESSIBLE_STATE_PROPERTY property.
	*
	* @return an instance of AccessibleStateSet containing the
	* current state set of the object
	* @see AccessibleStateSet
	* @see AccessibleState
	* @see #addPropertyChangeListener
	*/
	@:overload @:public @:abstract public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the Accessible parent of this object.
	*
	* @return the Accessible parent of this object; null if this
	* object does not have an Accessible parent
	*/
	@:overload @:public public function getAccessibleParent() : javax.accessibility.Accessible;
	
	/**
	* Sets the Accessible parent of this object.  This is meant to be used
	* only in the situations where the actual component's parent should
	* not be treated as the component's accessible parent and is a method
	* that should only be called by the parent of the accessible child.
	*
	* @param a - Accessible to be set as the parent
	*/
	@:overload @:public public function setAccessibleParent(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Gets the 0-based index of this object in its accessible parent.
	*
	* @return the 0-based index of this object in its parent; -1 if this
	* object does not have an accessible parent.
	*
	* @see #getAccessibleParent
	* @see #getAccessibleChildrenCount
	* @see #getAccessibleChild
	*/
	@:overload @:public @:abstract public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children of the object.
	*
	* @return the number of accessible children of the object.
	*/
	@:overload @:public @:abstract public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the specified Accessible child of the object.  The Accessible
	* children of an Accessible object are zero-based, so the first child
	* of an Accessible child is at index 0, the second child is at index 1,
	* and so on.
	*
	* @param i zero-based index of child
	* @return the Accessible child of the object
	* @see #getAccessibleChildrenCount
	*/
	@:overload @:public @:abstract public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Gets the locale of the component. If the component does not have a
	* locale, then the locale of its parent is returned.
	*
	* @return this component's locale.  If this component does not have
	* a locale, the locale of its parent is returned.
	*
	* @exception IllegalComponentStateException
	* If the Component does not have its own locale and has not yet been
	* added to a containment hierarchy such that the locale can be
	* determined from the containing parent.
	*/
	@:overload @:public @:abstract public function getLocale() : java.util.Locale;
	
	/**
	* Adds a PropertyChangeListener to the listener list.
	* The listener is registered for all Accessible properties and will
	* be called when those properties change.
	*
	* @see #ACCESSIBLE_NAME_PROPERTY
	* @see #ACCESSIBLE_DESCRIPTION_PROPERTY
	* @see #ACCESSIBLE_STATE_PROPERTY
	* @see #ACCESSIBLE_VALUE_PROPERTY
	* @see #ACCESSIBLE_SELECTION_PROPERTY
	* @see #ACCESSIBLE_TEXT_PROPERTY
	* @see #ACCESSIBLE_VISIBLE_DATA_PROPERTY
	*
	* @param listener  The PropertyChangeListener to be added
	*/
	@:overload @:public public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a PropertyChangeListener from the listener list.
	* This removes a PropertyChangeListener that was registered
	* for all properties.
	*
	* @param listener  The PropertyChangeListener to be removed
	*/
	@:overload @:public public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Gets the AccessibleAction associated with this object that supports
	* one or more actions.
	*
	* @return AccessibleAction if supported by object; else return null
	* @see AccessibleAction
	*/
	@:overload @:public public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Gets the AccessibleComponent associated with this object that has a
	* graphical representation.
	*
	* @return AccessibleComponent if supported by object; else return null
	* @see AccessibleComponent
	*/
	@:overload @:public public function getAccessibleComponent() : javax.accessibility.AccessibleComponent;
	
	/**
	* Gets the AccessibleSelection associated with this object which allows its
	* Accessible children to be selected.
	*
	* @return AccessibleSelection if supported by object; else return null
	* @see AccessibleSelection
	*/
	@:overload @:public public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Gets the AccessibleText associated with this object presenting
	* text on the display.
	*
	* @return AccessibleText if supported by object; else return null
	* @see AccessibleText
	*/
	@:overload @:public public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Gets the AccessibleEditableText associated with this object
	* presenting editable text on the display.
	*
	* @return AccessibleEditableText if supported by object; else return null
	* @see AccessibleEditableText
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getAccessibleEditableText() : javax.accessibility.AccessibleEditableText;
	
	/**
	* Gets the AccessibleValue associated with this object that supports a
	* Numerical value.
	*
	* @return AccessibleValue if supported by object; else return null
	* @see AccessibleValue
	*/
	@:overload @:public public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Gets the AccessibleIcons associated with an object that has
	* one or more associated icons
	*
	* @return an array of AccessibleIcon if supported by object;
	* otherwise return null
	* @see AccessibleIcon
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getAccessibleIcon() : java.NativeArray<javax.accessibility.AccessibleIcon>;
	
	/**
	* Gets the AccessibleRelationSet associated with an object
	*
	* @return an AccessibleRelationSet if supported by object;
	* otherwise return null
	* @see AccessibleRelationSet
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getAccessibleRelationSet() : javax.accessibility.AccessibleRelationSet;
	
	/**
	* Gets the AccessibleTable associated with an object
	*
	* @return an AccessibleTable if supported by object;
	* otherwise return null
	* @see AccessibleTable
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getAccessibleTable() : javax.accessibility.AccessibleTable;
	
	/**
	* Support for reporting bound property changes.  If oldValue and
	* newValue are not equal and the PropertyChangeEvent listener list
	* is not empty, then fire a PropertyChange event to each listener.
	* In general, this is for use by the Accessible objects themselves
	* and should not be called by an application program.
	* @param propertyName  The programmatic name of the property that
	* was changed.
	* @param oldValue  The old value of the property.
	* @param newValue  The new value of the property.
	* @see java.beans.PropertyChangeSupport
	* @see #addPropertyChangeListener
	* @see #removePropertyChangeListener
	* @see #ACCESSIBLE_NAME_PROPERTY
	* @see #ACCESSIBLE_DESCRIPTION_PROPERTY
	* @see #ACCESSIBLE_STATE_PROPERTY
	* @see #ACCESSIBLE_VALUE_PROPERTY
	* @see #ACCESSIBLE_SELECTION_PROPERTY
	* @see #ACCESSIBLE_TEXT_PROPERTY
	* @see #ACCESSIBLE_VISIBLE_DATA_PROPERTY
	*/
	@:overload @:public public function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	
}
