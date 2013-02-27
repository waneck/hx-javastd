package com.sun.servicetag;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
* A service tag is an XML-based data structure that identifies a product or
* a component on a system. The service tag schema is defined by the
* Service Tags Technology. The location of the DTD file is platform dependent.
* On Solaris, see <tt>/usr/share/lib/xml/dtd/servicetag.dtd</tt>.
* <p>
* A valid {@code ServiceTag} instance must comply to the service tag schema
* and contain the following fields:
* <ul>
*   <li>{@link #getInstanceURN <tt>instance_urn</tt>}</li>
*   <li>{@link #getProductName <tt>product_name</tt>}</li>
*   <li>{@link #getProductVersion <tt>product_version</tt>}</li>
*   <li>{@link #getProductURN <tt>product_urn</tt>}</li>
*   <li>{@link #getProductParent <tt>product_parent</tt>}</li>
*   <li>{@link #getProductParentURN <tt>product_parent_urn</tt>}</li>
*   <li>{@link #getProductDefinedInstanceID <tt>product_defined_inst_id</tt>}</li>
*   <li>{@link #getProductVendor <tt>product_vendor</tt>}</li>
*   <li>{@link #getPlatformArch <tt>platform_arch</tt>}</li>
*   <li>{@link #getContainer <tt>container</tt>}</li>
*   <li>{@link #getSource <tt>source</tt>}</li>
*   <li>{@link #getInstallerUID <tt>installer_uid</tt>}</li>
*   <li>{@link #getTimestamp <tt>timestamp</tt>}</li>
* </ul>
*
* The <tt>instance_urn</tt> can be specified when a {@code ServiceTag}
* object is created, or it can be generated when it is added to
* a {@link RegistrationData} object, or {@link Registry
* system service tag registry}. The <tt>installer_uid</tt> and
* <tt>timestamp</tt> are set when a {@code ServiceTag} object
* is added to a {@link RegistrationData} object, or {@link Registry
* system service tag registry}.
*
* @see <a href="https://sunconnection.sun.com/FAQ/sc_faq.html">Service Tags FAQ</a>
*/
extern class ServiceTag
{
	/**
	* Creates a service tag object with no <tt>instance_urn</tt>.
	*
	* @param productName               the name of the product.
	* @param productVersion            the version of the product.
	* @param productURN                the uniform resource name of the product
	* @param productParent             the name of the product's parent.
	* @param productParentURN          the uniform resource name of the product's parent.
	* @param productDefinedInstanceID  the instance identifier.
	* @param productVendor             the vendor of the product.
	* @param platformArch              the operating system architecture.
	* @param container                 the container of the product.
	* @param source                    the source of the product.
	*
	* @throws IllegalArgumentException if any value of the input fields
	*    does not conform to the service tag XML schema.
	*/
	@:overload public static function newInstance(productName : String, productVersion : String, productURN : String, productParent : String, productParentURN : String, productDefinedInstanceID : String, productVendor : String, platformArch : String, container : String, source : String) : ServiceTag;
	
	/**
	* Creates a service tag object with a specified <tt>instance_urn</tt>.
	*
	* @param instanceURN               the uniform resource name of this instance.
	* @param productName               the name of the product.
	* @param productVersion            the version of the product.
	* @param productURN                the uniform resource name of the product
	* @param productParent             the name of the product's parent.
	* @param productParentURN          the uniform resource name of the product's parent.
	* @param productDefinedInstanceID  the instance identifier.
	* @param productVendor             the vendor of the product.
	* @param platformArch              the operating system architecture.
	* @param container                 the container of the product.
	* @param source                    the source of the product.
	*
	* @throws IllegalArgumentException if any value of the input fields
	*    does not conform to the service tag XML schema.
	*/
	@:overload public static function newInstance(instanceURN : String, productName : String, productVersion : String, productURN : String, productParent : String, productParentURN : String, productDefinedInstanceID : String, productVendor : String, platformArch : String, container : String, source : String) : ServiceTag;
	
	/**
	* Returns a uniform resource name (URN) in this format:
	* <blockquote>
	* "<tt>urn:st:<32-char {@link java.util.UUID uuid}></tt>"
	* </blockquote>
	* @return a URN.
	*/
	@:overload public static function generateInstanceURN() : String;
	
	/**
	* Returns the uniform resource name of this service tag instance.
	*
	* @return  the <tt>instance_urn</tt> of this service tag.
	*/
	@:overload public function getInstanceURN() : String;
	
	/**
	* Returns the name of the product.
	*
	* @return the product name.
	*/
	@:overload public function getProductName() : String;
	
	/**
	* Returns the version of the product.
	*
	* @return the product version.
	*/
	@:overload public function getProductVersion() : String;
	
	/**
	* Returns the uniform resource name of the product.
	*
	* @return the product URN.
	*/
	@:overload public function getProductURN() : String;
	
	/**
	* Returns the uniform resource name of the product's parent.
	*
	* @return the product's parent URN.
	*/
	@:overload public function getProductParentURN() : String;
	
	/**
	* Returns the name of the product's parent.
	*
	* @return the product's parent name.
	*/
	@:overload public function getProductParent() : String;
	
	/**
	* Returns the identifier defined for this product instance.
	*
	* @return  the identifier defined for this product instance.
	*/
	@:overload public function getProductDefinedInstanceID() : String;
	
	/**
	* Returns the vendor of the product.
	*
	* @return the product vendor.
	*/
	@:overload public function getProductVendor() : String;
	
	/**
	* Returns the platform architecture on which the product
	* is running on.
	*
	* @return the platform architecture on which the product is running on.
	*/
	@:overload public function getPlatformArch() : String;
	
	/**
	* Returns the timestamp.  This timestamp is set when this service tag
	* is added to or updated in a {@code RegistrationData} object or
	* the system service tag registry.
	* This method may return {@code null}.
	*
	* @return timestamp when this service tag
	* is added to or updated in a {@code RegistrationData} object or
	* the system service tag registry, or {@code null}.
	*/
	@:overload public function getTimestamp() : java.util.Date;
	
	/**
	* Returns the container of the product.
	*
	* @return the container of the product.
	*/
	@:overload public function getContainer() : String;
	
	/**
	* Returns the source of this service tag.
	*
	* @return  source of this service tag.
	*/
	@:overload public function getSource() : String;
	
	/**
	* Returns the UID. The UID is set when this service tag
	* is added to or updated in the system service tag registry.
	* This is platform dependent whose default value is {@code -1}.
	* When this service tag is added to a {@code RegistrationData},
	* the UID is not set.
	*
	* @return the UID of whom this service tag
	* is added to or updated in the system service tag registry,
	* or {@code -1}.
	*/
	@:overload public function getInstallerUID() : Int;
	
	/**
	* Compares this service tag to the specified object.
	* The result is {@code true} if and only if the argument is
	* not {@code null} and is a {@code ServiceTag} object whose
	* <tt>instance_urn</tt> is the same as the
	* <tt>instance_urn</tt> of this service tag.
	*
	* @return {@code true} if this service tag is the same as
	* the specified object.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this service tag.
	* @return the hash code value for this service tag.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the string representation of this service tag.
	* The format is implementation specific.
	*
	* @return the string representation of this service tag.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns the {@link ServiceTag} instance for the running Java
	* platform. The {@link ServiceTag#setSource source} field
	* of the {@code ServiceTag} will be set to the given {@code source}.
	* This method will return {@code null} if there is no service tag
	* for the running Java platform.
	* <p>
	* This method is designed for Sun software that bundles the JDK
	* or the JRE to use. It is recommended that the {@code source}
	* string contains information about the bundling software
	* such as the name and the version of the software bundle,
	* for example,
	* <blockquote>
	* <tt>NetBeans IDE 6.0 with JDK 6 Update 5 Bundle</tt>
	* </blockquote>
	* in a NetBeans/JDK bundle.
	* <p>
	* At the first time to call this method the application
	* is required to have the write permission to the installed
	* directory of this running JDK or JRE instance.
	*
	* @param source the source that bundles the JDK or the JRE.
	* @return a {@code ServiceTag} object for the Java platform,
	*         or {@code null} if not supported.
	* @throws IOException if an error occurs in this operation.
	*/
	@:overload public static function getJavaServiceTag(source : String) : ServiceTag;
	
	
}
