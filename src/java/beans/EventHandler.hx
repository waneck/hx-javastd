package java.beans;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class EventHandler implements java.lang.reflect.InvocationHandler
{
	/**
	* Creates a new <code>EventHandler</code> object;
	* you generally use one of the <code>create</code> methods
	* instead of invoking this constructor directly.  Refer to
	* {@link java.beans.EventHandler#create(Class, Object, String, String)
	* the general version of create} for a complete description of
	* the <code>eventPropertyName</code> and <code>listenerMethodName</code>
	* parameter.
	*
	* @param target the object that will perform the action
	* @param action the name of a (possibly qualified) property or method on
	*        the target
	* @param eventPropertyName the (possibly qualified) name of a readable property of the incoming event
	* @param listenerMethodName the name of the method in the listener interface that should trigger the action
	*
	* @throws NullPointerException if <code>target</code> is null
	* @throws NullPointerException if <code>action</code> is null
	*
	* @see EventHandler
	* @see #create(Class, Object, String, String, String)
	* @see #getTarget
	* @see #getAction
	* @see #getEventPropertyName
	* @see #getListenerMethodName
	*/
	@:overload @:public public function new(target : Dynamic, action : String, eventPropertyName : String, listenerMethodName : String) : Void;
	
	/**
	* Returns the object to which this event handler will send a message.
	*
	* @return the target of this event handler
	* @see #EventHandler(Object, String, String, String)
	*/
	@:overload @:public public function getTarget() : Dynamic;
	
	/**
	* Returns the name of the target's writable property
	* that this event handler will set,
	* or the name of the method that this event handler
	* will invoke on the target.
	*
	* @return the action of this event handler
	* @see #EventHandler(Object, String, String, String)
	*/
	@:overload @:public public function getAction() : String;
	
	/**
	* Returns the property of the event that should be
	* used in the action applied to the target.
	*
	* @return the property of the event
	*
	* @see #EventHandler(Object, String, String, String)
	*/
	@:overload @:public public function getEventPropertyName() : String;
	
	/**
	* Returns the name of the method that will trigger the action.
	* A return value of <code>null</code> signifies that all methods in the
	* listener interface trigger the action.
	*
	* @return the name of the method that will trigger the action
	*
	* @see #EventHandler(Object, String, String, String)
	*/
	@:overload @:public public function getListenerMethodName() : String;
	
	/**
	* Extract the appropriate property value from the event and
	* pass it to the action associated with
	* this <code>EventHandler</code>.
	*
	* @param proxy the proxy object
	* @param method the method in the listener interface
	* @return the result of applying the action to the target
	*
	* @see EventHandler
	*/
	@:overload @:public public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, arguments : java.NativeArray<Dynamic>) : Dynamic;
	
	/**
	* Creates an implementation of <code>listenerInterface</code> in which
	* <em>all</em> of the methods in the listener interface apply
	* the handler's <code>action</code> to the <code>target</code>. This
	* method is implemented by calling the other, more general,
	* implementation of the <code>create</code> method with both
	* the <code>eventPropertyName</code> and the <code>listenerMethodName</code>
	* taking the value <code>null</code>. Refer to
	* {@link java.beans.EventHandler#create(Class, Object, String, String)
	* the general version of create} for a complete description of
	* the <code>action</code> parameter.
	* <p>
	* To create an <code>ActionListener</code> that shows a
	* <code>JDialog</code> with <code>dialog.show()</code>,
	* one can write:
	*
	*<blockquote>
	*<pre>
	*EventHandler.create(ActionListener.class, dialog, "show")
	*</pre>
	*</blockquote>
	*
	* @param listenerInterface the listener interface to create a proxy for
	* @param target the object that will perform the action
	* @param action the name of a (possibly qualified) property or method on
	*        the target
	* @return an object that implements <code>listenerInterface</code>
	*
	* @throws NullPointerException if <code>listenerInterface</code> is null
	* @throws NullPointerException if <code>target</code> is null
	* @throws NullPointerException if <code>action</code> is null
	*
	* @see #create(Class, Object, String, String)
	*/
	@:overload @:public @:static public static function create<T>(listenerInterface : Class<T>, target : Dynamic, action : String) : T;
	
	/**
	/**
	* Creates an implementation of <code>listenerInterface</code> in which
	* <em>all</em> of the methods pass the value of the event
	* expression, <code>eventPropertyName</code>, to the final method in the
	* statement, <code>action</code>, which is applied to the <code>target</code>.
	* This method is implemented by calling the
	* more general, implementation of the <code>create</code> method with
	* the <code>listenerMethodName</code> taking the value <code>null</code>.
	* Refer to
	* {@link java.beans.EventHandler#create(Class, Object, String, String)
	* the general version of create} for a complete description of
	* the <code>action</code> and <code>eventPropertyName</code> parameters.
	* <p>
	* To create an <code>ActionListener</code> that sets the
	* the text of a <code>JLabel</code> to the text value of
	* the <code>JTextField</code> source of the incoming event,
	* you can use the following code:
	*
	*<blockquote>
	*<pre>
	*EventHandler.create(ActionListener.class, label, "text", "source.text");
	*</pre>
	*</blockquote>
	*
	* This is equivalent to the following code:
	*<blockquote>
	*<pre>
//Equivalent code using an inner class instead of EventHandler.
	*new ActionListener() {
	*    public void actionPerformed(ActionEvent event) {
	*        label.setText(((JTextField)(event.getSource())).getText());
	*     }
	*};
	*</pre>
	*</blockquote>
	*
	* @param listenerInterface the listener interface to create a proxy for
	* @param target the object that will perform the action
	* @param action the name of a (possibly qualified) property or method on
	*        the target
	* @param eventPropertyName the (possibly qualified) name of a readable property of the incoming event
	*
	* @return an object that implements <code>listenerInterface</code>
	*
	* @throws NullPointerException if <code>listenerInterface</code> is null
	* @throws NullPointerException if <code>target</code> is null
	* @throws NullPointerException if <code>action</code> is null
	*
	* @see #create(Class, Object, String, String, String)
	*/
	@:overload @:public @:static public static function create<T>(listenerInterface : Class<T>, target : Dynamic, action : String, eventPropertyName : String) : T;
	
	/**
	* Creates an implementation of <code>listenerInterface</code> in which
	* the method named <code>listenerMethodName</code>
	* passes the value of the event expression, <code>eventPropertyName</code>,
	* to the final method in the statement, <code>action</code>, which
	* is applied to the <code>target</code>. All of the other listener
	* methods do nothing.
	* <p>
	* The <code>eventPropertyName</code> string is used to extract a value
	* from the incoming event object that is passed to the target
	* method.  The common case is the target method takes no arguments, in
	* which case a value of null should be used for the
	* <code>eventPropertyName</code>.  Alternatively if you want
	* the incoming event object passed directly to the target method use
	* the empty string.
	* The format of the <code>eventPropertyName</code> string is a sequence of
	* methods or properties where each method or
	* property is applied to the value returned by the preceeding method
	* starting from the incoming event object.
	* The syntax is: <code>propertyName{.propertyName}*</code>
	* where <code>propertyName</code> matches a method or
	* property.  For example, to extract the <code>point</code>
	* property from a <code>MouseEvent</code>, you could use either
	* <code>"point"</code> or <code>"getPoint"</code> as the
	* <code>eventPropertyName</code>.  To extract the "text" property from
	* a <code>MouseEvent</code> with a <code>JLabel</code> source use any
	* of the following as <code>eventPropertyName</code>:
	* <code>"source.text"</code>,
	* <code>"getSource.text"</code> <code>"getSource.getText"</code> or
	* <code>"source.getText"</code>.  If a method can not be found, or an
	* exception is generated as part of invoking a method a
	* <code>RuntimeException</code> will be thrown at dispatch time.  For
	* example, if the incoming event object is null, and
	* <code>eventPropertyName</code> is non-null and not empty, a
	* <code>RuntimeException</code> will be thrown.
	* <p>
	* The <code>action</code> argument is of the same format as the
	* <code>eventPropertyName</code> argument where the last property name
	* identifies either a method name or writable property.
	* <p>
	* If the <code>listenerMethodName</code> is <code>null</code>
	* <em>all</em> methods in the interface trigger the <code>action</code> to be
	* executed on the <code>target</code>.
	* <p>
	* For example, to create a <code>MouseListener</code> that sets the target
	* object's <code>origin</code> property to the incoming <code>MouseEvent</code>'s
	* location (that's the value of <code>mouseEvent.getPoint()</code>) each
	* time a mouse button is pressed, one would write:
	*<blockquote>
	*<pre>
	*EventHandler.create(MouseListener.class, target, "origin", "point", "mousePressed");
	*</pre>
	*</blockquote>
	*
	* This is comparable to writing a <code>MouseListener</code> in which all
	* of the methods except <code>mousePressed</code> are no-ops:
	*
	*<blockquote>
	*<pre>
//Equivalent code using an inner class instead of EventHandler.
	*new MouseAdapter() {
	*    public void mousePressed(MouseEvent e) {
	*        target.setOrigin(e.getPoint());
	*    }
	*};
	* </pre>
	*</blockquote>
	*
	* @param listenerInterface the listener interface to create a proxy for
	* @param target the object that will perform the action
	* @param action the name of a (possibly qualified) property or method on
	*        the target
	* @param eventPropertyName the (possibly qualified) name of a readable property of the incoming event
	* @param listenerMethodName the name of the method in the listener interface that should trigger the action
	*
	* @return an object that implements <code>listenerInterface</code>
	*
	* @throws NullPointerException if <code>listenerInterface</code> is null
	* @throws NullPointerException if <code>target</code> is null
	* @throws NullPointerException if <code>action</code> is null
	*
	* @see EventHandler
	*/
	@:overload @:public @:static public static function create<T>(listenerInterface : Class<T>, target : Dynamic, action : String, eventPropertyName : String, listenerMethodName : String) : T;
	
	
}
