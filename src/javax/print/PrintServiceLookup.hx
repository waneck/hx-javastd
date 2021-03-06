package javax.print;
/*
* Copyright (c) 2000, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class PrintServiceLookup
{
	/**
	* Locates print services capable of printing the specified
	* {@link DocFlavor}.
	*
	* @param flavor the flavor to print. If null, this constraint is not
	*        used.
	* @param attributes attributes that the print service must support.
	* If null this constraint is not used.
	*
	* @return array of matching <code>PrintService</code> objects
	* representing print services that support the specified flavor
	* attributes.  If no services match, the array is zero-length.
	*/
	@:overload @:public @:static @:final public static function lookupPrintServices(flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : java.NativeArray<javax.print.PrintService>;
	
	/**
	* Locates MultiDoc print Services capable of printing MultiDocs
	* containing all the specified doc flavors.
	* <P> This method is useful to help locate a service that can print
	* a <code>MultiDoc</code> in which the elements may be different
	* flavors. An application could perform this itself by multiple lookups
	* on each <code>DocFlavor</code> in turn and collating the results,
	* but the lookup service may be able to do this more efficiently.
	*
	* @param flavors the flavors to print. If null or empty this
	*        constraint is not used.
	* Otherwise return only multidoc print services that can print all
	* specified doc flavors.
	* @param attributes attributes that the print service must
	* support.  If null this constraint is not used.
	*
	* @return array of matching {@link MultiDocPrintService} objects.
	* If no services match, the array is zero-length.
	*
	*/
	@:overload @:public @:static @:final public static function lookupMultiDocPrintServices(flavors : java.NativeArray<javax.print.DocFlavor>, attributes : javax.print.attribute.AttributeSet) : java.NativeArray<javax.print.MultiDocPrintService>;
	
	/**
	* Locates the default print service for this environment.
	* This may return null.
	* If multiple lookup services each specify a default, the
	* chosen service is not precisely defined, but a
	* platform native service, rather than an installed service,
	* is usually returned as the default.  If there is no clearly
	* identifiable
	* platform native default print service, the default is the first
	* to be located in an implementation-dependent manner.
	* <p>
	* This may include making use of any preferences API that is available
	* as part of the Java or native platform.
	* This algorithm may be overridden by a user setting the property
	* javax.print.defaultPrinter.
	* A service specified must be discovered to be valid and currently
	* available to be returned as the default.
	*
	* @return the default PrintService.
	*/
	@:overload @:public @:static @:final public static function lookupDefaultPrintService() : javax.print.PrintService;
	
	/**
	* Allows an application to explicitly register a class that
	* implements lookup services. The registration will not persist
	* across VM invocations.
	* This is useful if an application needs to make a new service
	* available that is not part of the installation.
	* If the lookup service is already registered, or cannot be registered,
	* the method returns false.
	* <p>
	*
	* @param sp an implementation of a lookup service.
	* @return <code>true</code> if the new lookup service is newly
	*         registered; <code>false</code> otherwise.
	*/
	@:overload @:public @:static public static function registerServiceProvider(sp : javax.print.PrintServiceLookup) : Bool;
	
	/**
	* Allows an application to directly register an instance of a
	* class which implements a print service.
	* The lookup operations for this service will be
	* performed by the PrintServiceLookup class using the attribute
	* values and classes reported by the service.
	* This may be less efficient than a lookup
	* service tuned for that service.
	* Therefore registering a <code>PrintServiceLookup</code> instance
	* instead is recommended.
	* The method returns true if this service is not previously
	* registered and is now successfully registered.
	* This method should not be called with StreamPrintService instances.
	* They will always fail to register and the method will return false.
	* @param service an implementation of a print service.
	* @return <code>true</code> if the service is newly
	*         registered; <code>false</code> otherwise.
	*/
	@:overload @:public @:static public static function registerService(service : javax.print.PrintService) : Bool;
	
	/**
	* Locates services that can be positively confirmed to support
	* the combination of attributes and DocFlavors specified.
	* This method is not called directly by applications.
	* <p>
	* Implemented by a service provider, used by the static methods
	* of this class.
	* <p>
	* The results should be the same as obtaining all the PrintServices
	* and querying each one individually on its support for the
	* specified attributes and flavors, but the process can be more
	* efficient by taking advantage of the capabilities of lookup services
	* for the print services.
	*
	* @param flavor of document required.  If null it is ignored.
	* @param attributes required to be supported. If null this
	* constraint is not used.
	* @return array of matching PrintServices. If no services match, the
	* array is zero-length.
	*/
	@:overload @:public @:abstract public function getPrintServices(flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : java.NativeArray<javax.print.PrintService>;
	
	/**
	* Not called directly by applications.
	* Implemented by a service provider, used by the static methods
	* of this class.
	* @return array of all PrintServices known to this lookup service
	* class. If none are found, the array is zero-length.
	*/
	@:overload @:public @:abstract public function getPrintServices() : java.NativeArray<javax.print.PrintService>;
	
	/**
	* Not called directly by applications.
	* <p>
	* Implemented by a service provider, used by the static methods
	* of this class.
	* <p>
	* Locates MultiDoc print services which can be positively confirmed
	* to support the combination of attributes and DocFlavors specified.
	* <p>
	*
	* @param flavors of documents required. If null or empty it is ignored.
	* @param attributes required to be supported. If null this
	* constraint is not used.
	* @return array of matching PrintServices. If no services match, the
	* array is zero-length.
	*/
	@:overload @:public @:abstract public function getMultiDocPrintServices(flavors : java.NativeArray<javax.print.DocFlavor>, attributes : javax.print.attribute.AttributeSet) : java.NativeArray<javax.print.MultiDocPrintService>;
	
	/**
	* Not called directly by applications.
	* Implemented by a service provider, and called by the print lookup
	* service
	* @return the default PrintService for this lookup service.
	* If there is no default, returns null.
	*/
	@:overload @:public @:abstract public function getDefaultPrintService() : javax.print.PrintService;
	
	
}
/** Implementations of this class provide lookup services for
* print services (typically equivalent to printers) of a particular type.
* <p>
* Multiple implementations may be installed concurrently.
* All implementations must be able to describe the located printers
* as instances of a PrintService.
* Typically implementations of this service class are located
* automatically in JAR files (see the SPI JAR file specification).
* These classes must be instantiable using a default constructor.
* Alternatively applications may explicitly register instances
* at runtime.
* <p>
* Applications use only the static methods of this abstract class.
* The instance methods are implemented by a service provider in a subclass
* and the unification of the results from all installed lookup classes
* are reported by the static methods of this class when called by
* the application.
* <p>
* A PrintServiceLookup implementor is recommended to check for the
* SecurityManager.checkPrintJobAccess() to deny access to untrusted code.
* Following this recommended policy means that untrusted code may not
* be able to locate any print services. Downloaded applets are the most
* common example of untrusted code.
* <p>
* This check is made on a per lookup service basis to allow flexibility in
* the policy to reflect the needs of different lookup services.
* <p>
* Services which are registered by registerService(PrintService)
* will not be included in lookup results if a security manager is
* installed and its checkPrintJobAccess() method denies access.
*/
@:native('javax$print$PrintServiceLookup$Services') @:internal extern class PrintServiceLookup_Services
{
	
}
