package java.awt;
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
extern class ScrollPaneAdjustable implements java.awt.Adjustable implements java.io.Serializable
{
	/**
	* Returns the orientation of this scrollbar.
	* @return    the orientation of this scrollbar, either
	*            <code>Adjustable.HORIZONTAL</code> or
	*            <code>Adjustable.VERTICAL</code>
	*/
	@:overload public function getOrientation() : Int;
	
	/**
	* This method should <strong>NOT</strong> be called by user code.
	* This method is public for this class to properly implement
	* <code>Adjustable</code> interface.
	*
	* @throws <code>AWTError</code>  Always throws an error when called.
	*/
	@:overload public function setMinimum(min : Int) : Void;
	
	@:overload public function getMinimum() : Int;
	
	/**
	* This method should <strong>NOT</strong> be called by user code.
	* This method is public for this class to properly implement
	* <code>Adjustable</code> interface.
	*
	* @throws <code>AWTError</code>  Always throws an error when called.
	*/
	@:overload public function setMaximum(max : Int) : Void;
	
	@:overload public function getMaximum() : Int;
	
	@:overload @:synchronized public function setUnitIncrement(u : Int) : Void;
	
	@:overload public function getUnitIncrement() : Int;
	
	@:overload @:synchronized public function setBlockIncrement(b : Int) : Void;
	
	@:overload public function getBlockIncrement() : Int;
	
	/**
	* This method should <strong>NOT</strong> be called by user code.
	* This method is public for this class to properly implement
	* <code>Adjustable</code> interface.
	*
	* @throws <code>AWTError</code>  Always throws an error when called.
	*/
	@:overload public function setVisibleAmount(v : Int) : Void;
	
	@:overload public function getVisibleAmount() : Int;
	
	/**
	* Sets the <code>valueIsAdjusting</code> property.
	*
	* @param b new adjustment-in-progress status
	* @see #getValueIsAdjusting
	* @since 1.4
	*/
	@:require(java4) @:overload public function setValueIsAdjusting(b : Bool) : Void;
	
	/**
	* Returns true if the value is in the process of changing as a
	* result of actions being taken by the user.
	*
	* @return the value of the <code>valueIsAdjusting</code> property
	* @see #setValueIsAdjusting
	*/
	@:overload public function getValueIsAdjusting() : Bool;
	
	/**
	* Sets the value of this scrollbar to the specified value.
	* <p>
	* If the value supplied is less than the current minimum or
	* greater than the current maximum, then one of those values is
	* substituted, as appropriate.
	*
	* @param v the new value of the scrollbar
	*/
	@:overload public function setValue(v : Int) : Void;
	
	@:overload public function getValue() : Int;
	
	/**
	* Adds the specified adjustment listener to receive adjustment
	* events from this <code>ScrollPaneAdjustable</code>.
	* If <code>l</code> is <code>null</code>, no exception is thrown
	* and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param    l   the adjustment listener.
	* @see      #removeAdjustmentListener
	* @see      #getAdjustmentListeners
	* @see      java.awt.event.AdjustmentListener
	* @see      java.awt.event.AdjustmentEvent
	*/
	@:overload @:synchronized public function addAdjustmentListener(l : java.awt.event.AdjustmentListener) : Void;
	
	/**
	* Removes the specified adjustment listener so that it no longer
	* receives adjustment events from this <code>ScrollPaneAdjustable</code>.
	* If <code>l</code> is <code>null</code>, no exception is thrown
	* and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param         l     the adjustment listener.
	* @see           #addAdjustmentListener
	* @see           #getAdjustmentListeners
	* @see           java.awt.event.AdjustmentListener
	* @see           java.awt.event.AdjustmentEvent
	* @since         JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function removeAdjustmentListener(l : java.awt.event.AdjustmentListener) : Void;
	
	/**
	* Returns an array of all the adjustment listeners
	* registered on this <code>ScrollPaneAdjustable</code>.
	*
	* @return all of this <code>ScrollPaneAdjustable</code>'s
	*         <code>AdjustmentListener</code>s
	*         or an empty array if no adjustment
	*         listeners are currently registered
	*
	* @see           #addAdjustmentListener
	* @see           #removeAdjustmentListener
	* @see           java.awt.event.AdjustmentListener
	* @see           java.awt.event.AdjustmentEvent
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function getAdjustmentListeners() : java.NativeArray<java.awt.event.AdjustmentListener>;
	
	/**
	* Returns a string representation of this scrollbar and its values.
	* @return    a string representation of this scrollbar.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a string representing the state of this scrollbar.
	* This method is intended to be used only for debugging purposes,
	* and the content and format of the returned string may vary
	* between implementations.  The returned string may be empty but
	* may not be <code>null</code>.
	*
	* @return      the parameter string of this scrollbar.
	*/
	@:overload public function paramString() : String;
	
	
}
