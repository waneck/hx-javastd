package javax.swing.plaf.nimbus;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class State<T>
{
	/**
	* <p>Create a new custom State. Specify the name for the state. The name should
	* be unique within the states set for any one particular component.
	* The name of the state should coincide with the name used in UIDefaults.</p>
	*
	* <p>For example, the following would be correct:</p>
	* <pre><code>
	*     defaults.put("Button.States", "Enabled, Foo, Disabled");
	*     defaults.put("Button.Foo", new FooState("Foo"));
	* </code></pre>
	*
	* @param name a simple user friendly name for the state, such as "Indeterminate"
	*        or "EmbeddedPanel" or "Blurred". It is customary to use camel case,
	*        with the first letter capitalized.
	*/
	@:overload private function new(name : String) : Void;
	
	@:overload public function toString() : String;
	
	/**
	* <p>Gets whether the specified JComponent is in the custom state represented
	* by this class. <em>This is an extremely performance sensitive loop.</em>
	* Please take proper precautions to ensure that it executes quickly.</p>
	*
	* <p>Nimbus uses this method to help determine what state a JComponent is
	* in. For example, a custom State could exist for JProgressBar such that
	* it would return <code>true</code> when the progress bar is indeterminate.
	* Such an implementation of this method would simply be:</p>
	*
	* <pre><code> return c.isIndeterminate();</code></pre>
	*
	* @param c the JComponent to test. This will never be null.
	* @return true if <code>c</code> is in the custom state represented by
	*         this <code>State</code> instance
	*/
	@:overload @:abstract private function isInState(c : T) : Bool;
	
	
}
@:native('javax$swing$plaf$nimbus$State$StandardState') @:internal extern class State_StandardState extends javax.swing.plaf.nimbus.State<javax.swing.JComponent>
{
	@:overload public function getState() : Int;
	
	@:overload private function isInState(c : javax.swing.JComponent) : Bool;
	
	
}
