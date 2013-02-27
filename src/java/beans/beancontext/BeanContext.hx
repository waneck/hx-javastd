package java.beans.beancontext;
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
extern interface BeanContext extends java.beans.beancontext.BeanContextChild extends java.util.Collection<Dynamic> extends java.beans.DesignMode extends java.beans.Visibility
{
	/**
	* Instantiate the javaBean named as a
	* child of this <code>BeanContext</code>.
	* The implementation of the JavaBean is
	* derived from the value of the beanName parameter,
	* and is defined by the
	* <code>java.beans.Beans.instantiate()</code> method.
	*
	* @param beanName The name of the JavaBean to instantiate
	* as a child of this <code>BeanContext</code>
	* @throws <code>IOException</code>
	* @throws <code>ClassNotFoundException</code> if the class identified
	* by the beanName parameter is not found
	*/
	@:overload public function instantiateChild(beanName : String) : Dynamic;
	
	/**
	* Analagous to <code>java.lang.ClassLoader.getResourceAsStream()</code>,
	* this method allows a <code>BeanContext</code> implementation
	* to interpose behavior between the child <code>Component</code>
	* and underlying <code>ClassLoader</code>.
	*
	* @param name the resource name
	* @param bcc the specified child
	* @return an <code>InputStream</code> for reading the resource,
	* or <code>null</code> if the resource could not
	* be found.
	* @throws <code>IllegalArgumentException</code> if
	* the resource is not valid
	*/
	@:overload public function getResourceAsStream(name : String, bcc : java.beans.beancontext.BeanContextChild) : java.io.InputStream;
	
	/**
	* Analagous to <code>java.lang.ClassLoader.getResource()</code>, this
	* method allows a <code>BeanContext</code> implementation to interpose
	* behavior between the child <code>Component</code>
	* and underlying <code>ClassLoader</code>.
	*
	* @param name the resource name
	* @param bcc the specified child
	* @return a <code>URL</code> for the named
	* resource for the specified child
	* @throws <code>IllegalArgumentException</code>
	* if the resource is not valid
	*/
	@:overload public function getResource(name : String, bcc : java.beans.beancontext.BeanContextChild) : java.net.URL;
	
	/**
	* Adds the specified <code>BeanContextMembershipListener</code>
	* to receive <code>BeanContextMembershipEvents</code> from
	* this <code>BeanContext</code> whenever it adds
	* or removes a child <code>Component</code>(s).
	*
	* @param bcml the <code>BeanContextMembershipListener</code> to be added
	*/
	@:overload public function addBeanContextMembershipListener(bcml : java.beans.beancontext.BeanContextMembershipListener) : Void;
	
	/**
	* Removes the specified <code>BeanContextMembershipListener</code>
	* so that it no longer receives <code>BeanContextMembershipEvent</code>s
	* when the child <code>Component</code>(s) are added or removed.
	*
	* @param bcml the <code>BeanContextMembershipListener</code>
	* to be removed
	*/
	@:overload public function removeBeanContextMembershipListener(bcml : java.beans.beancontext.BeanContextMembershipListener) : Void;
	
	
}
