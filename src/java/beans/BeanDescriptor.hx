package java.beans;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BeanDescriptor extends java.beans.FeatureDescriptor
{
	/**
	* Create a BeanDescriptor for a bean that doesn't have a customizer.
	*
	* @param beanClass  The Class object of the Java class that implements
	*          the bean.  For example sun.beans.OurButton.class.
	*/
	@:overload public function new(beanClass : Class<Dynamic>) : Void;
	
	/**
	* Create a BeanDescriptor for a bean that has a customizer.
	*
	* @param beanClass  The Class object of the Java class that implements
	*          the bean.  For example sun.beans.OurButton.class.
	* @param customizerClass  The Class object of the Java class that implements
	*          the bean's Customizer.  For example sun.beans.OurButtonCustomizer.class.
	*/
	@:overload public function new(beanClass : Class<Dynamic>, customizerClass : Class<Dynamic>) : Void;
	
	/**
	* Gets the bean's Class object.
	*
	* @return The Class object for the bean.
	*/
	@:overload public function getBeanClass() : Class<Dynamic>;
	
	/**
	* Gets the Class object for the bean's customizer.
	*
	* @return The Class object for the bean's customizer.  This may
	* be null if the bean doesn't have a customizer.
	*/
	@:overload public function getCustomizerClass() : Class<Dynamic>;
	
	
}
