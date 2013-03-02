package javax.activation;
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
extern class DataHandler implements java.awt.datatransfer.Transferable
{
	/**
	* Create a <code>DataHandler</code> instance referencing the
	* specified DataSource.  The data exists in a byte stream form.
	* The DataSource will provide an InputStream to access the data.
	*
	* @param ds        the DataSource
	*/
	@:overload public function new(ds : javax.activation.DataSource) : Void;
	
	/**
	* Create a <code>DataHandler</code> instance representing an object
	* of this MIME type.  This constructor is
	* used when the application already has an in-memory representation
	* of the data in the form of a Java Object.
	*
	* @param obj       the Java Object
	* @param mimeType  the MIME type of the object
	*/
	@:overload public function new(obj : Dynamic, mimeType : String) : Void;
	
	/**
	* Create a <code>DataHandler</code> instance referencing a URL.
	* The DataHandler internally creates a <code>URLDataSource</code>
	* instance to represent the URL.
	*
	* @param url       a URL object
	*/
	@:overload public function new(url : java.net.URL) : Void;
	
	/**
	* Return the DataSource associated with this instance
	* of DataHandler.
	* <p>
	* For DataHandlers that have been instantiated with a DataSource,
	* this method returns the DataSource that was used to create the
	* DataHandler object. In other cases the DataHandler
	* constructs a DataSource from the data used to construct
	* the DataHandler. DataSources created for DataHandlers <b>not</b>
	* instantiated with a DataSource are cached for performance
	* reasons.
	*
	* @return  a valid DataSource object for this DataHandler
	*/
	@:overload public function getDataSource() : javax.activation.DataSource;
	
	/**
	* Return the name of the data object. If this DataHandler
	* was created with a DataSource, this method calls through
	* to the <code>DataSource.getName</code> method, otherwise it
	* returns <i>null</i>.
	*
	* @return  the name of the object
	*/
	@:overload public function getName() : String;
	
	/**
	* Return the MIME type of this object as retrieved from
	* the source object. Note that this is the <i>full</i>
	* type with parameters.
	*
	* @return  the MIME type
	*/
	@:overload public function getContentType() : String;
	
	/**
	* Get the InputStream for this object. <p>
	*
	* For DataHandlers instantiated with a DataSource, the DataHandler
	* calls the <code>DataSource.getInputStream</code> method and
	* returns the result to the caller.
	* <p>
	* For DataHandlers instantiated with an Object, the DataHandler
	* first attempts to find a DataContentHandler for the Object. If
	* the DataHandler can not find a DataContentHandler for this MIME
	* type, it throws an UnsupportedDataTypeException.  If it is
	* successful, it creates a pipe and a thread.  The thread uses the
	* DataContentHandler's <code>writeTo</code> method to write the
	* stream data into one end of the pipe.  The other end of the pipe
	* is returned to the caller.  Because a thread is created to copy
	* the data, IOExceptions that may occur during the copy can not be
	* propagated back to the caller. The result is an empty stream.<p>
	*
	* @return  the InputStream representing this data
	* @exception IOException   if an I/O error occurs
	*
	* @see javax.activation.DataContentHandler#writeTo
	* @see javax.activation.UnsupportedDataTypeException
	*/
	@:overload public function getInputStream() : java.io.InputStream;
	
	/**
	* Write the data to an <code>OutputStream</code>.<p>
	*
	* If the DataHandler was created with a DataSource, writeTo
	* retrieves the InputStream and copies the bytes from the
	* InputStream to the OutputStream passed in.
	* <p>
	* If the DataHandler was created with an object, writeTo
	* retrieves the DataContentHandler for the object's type.
	* If the DataContentHandler was found, it calls the
	* <code>writeTo</code> method on the <code>DataContentHandler</code>.
	*
	* @param os        the OutputStream to write to
	* @exception IOException   if an I/O error occurs
	*/
	@:overload public function writeTo(os : java.io.OutputStream) : Void;
	
	/**
	* Get an OutputStream for this DataHandler to allow overwriting
	* the underlying data.
	* If the DataHandler was created with a DataSource, the
	* DataSource's <code>getOutputStream</code> method is called.
	* Otherwise, <code>null</code> is returned.
	*
	* @return the OutputStream
	*
	* @see javax.activation.DataSource#getOutputStream
	* @see javax.activation.URLDataSource
	*/
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Return the DataFlavors in which this data is available. <p>
	*
	* Returns an array of DataFlavor objects indicating the flavors
	* the data can be provided in. The array is usually ordered
	* according to preference for providing the data, from most
	* richly descriptive to least richly descriptive.<p>
	*
	* The DataHandler attempts to find a DataContentHandler that
	* corresponds to the MIME type of the data. If one is located,
	* the DataHandler calls the DataContentHandler's
	* <code>getTransferDataFlavors</code> method. <p>
	*
	* If a DataContentHandler can <i>not</i> be located, and if the
	* DataHandler was created with a DataSource (or URL), one
	* DataFlavor is returned that represents this object's MIME type
	* and the <code>java.io.InputStream</code> class.  If the
	* DataHandler was created with an object and a MIME type,
	* getTransferDataFlavors returns one DataFlavor that represents
	* this object's MIME type and the object's class.
	*
	* @return  an array of data flavors in which this data can be transferred
	* @see javax.activation.DataContentHandler#getTransferDataFlavors
	*/
	@:overload @:synchronized public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Returns whether the specified data flavor is supported
	* for this object.<p>
	*
	* This method iterates through the DataFlavors returned from
	* <code>getTransferDataFlavors</code>, comparing each with
	* the specified flavor.
	*
	* @param flavor    the requested flavor for the data
	* @return          true if the data flavor is supported
	* @see javax.activation.DataHandler#getTransferDataFlavors
	*/
	@:overload public function isDataFlavorSupported(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Returns an object that represents the data to be
	* transferred. The class of the object returned is defined by the
	* representation class of the data flavor.<p>
	*
	* <b>For DataHandler's created with DataSources or URLs:</b><p>
	*
	* The DataHandler attempts to locate a DataContentHandler
	* for this MIME type. If one is found, the passed in DataFlavor
	* and the type of the data are passed to its <code>getTransferData</code>
	* method. If the DataHandler fails to locate a DataContentHandler
	* and the flavor specifies this object's MIME type and the
	* <code>java.io.InputStream</code> class, this object's InputStream
	* is returned.
	* Otherwise it throws an UnsupportedFlavorException. <p>
	*
	* <b>For DataHandler's created with Objects:</b><p>
	*
	* The DataHandler attempts to locate a DataContentHandler
	* for this MIME type. If one is found, the passed in DataFlavor
	* and the type of the data are passed to its getTransferData
	* method. If the DataHandler fails to locate a DataContentHandler
	* and the flavor specifies this object's MIME type and its class,
	* this DataHandler's referenced object is returned.
	* Otherwise it throws an UnsupportedFlavorException.
	*
	* @param flavor    the requested flavor for the data
	* @return          the object
	* @exception UnsupportedFlavorException    if the data could not be
	*                  converted to the requested flavor
	* @exception IOException   if an I/O error occurs
	* @see javax.activation.ActivationDataFlavor
	*/
	@:overload public function getTransferData(flavor : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	/**
	* Set the CommandMap for use by this DataHandler.
	* Setting it to <code>null</code> causes the CommandMap to revert
	* to the CommandMap returned by the
	* <code>CommandMap.getDefaultCommandMap</code> method.
	* Changing the CommandMap, or setting it to <code>null</code>,
	* clears out any data cached from the previous CommandMap.
	*
	* @param commandMap        the CommandMap to use in this DataHandler
	*
	* @see javax.activation.CommandMap#setDefaultCommandMap
	*/
	@:overload @:synchronized public function setCommandMap(commandMap : javax.activation.CommandMap) : Void;
	
	/**
	* Return the <i>preferred</i> commands for this type of data.
	* This method calls the <code>getPreferredCommands</code> method
	* in the CommandMap associated with this instance of DataHandler.
	* This method returns an array that represents a subset of
	* available commands. In cases where multiple commands for the
	* MIME type represented by this DataHandler are present, the
	* installed CommandMap chooses the appropriate commands.
	*
	* @return  the CommandInfo objects representing the preferred commands
	*
	* @see javax.activation.CommandMap#getPreferredCommands
	*/
	@:overload public function getPreferredCommands() : java.NativeArray<javax.activation.CommandInfo>;
	
	/**
	* Return all the commands for this type of data.
	* This method returns an array containing all commands
	* for the type of data represented by this DataHandler. The
	* MIME type for the underlying data represented by this DataHandler
	* is used to call through to the <code>getAllCommands</code> method
	* of the CommandMap associated with this DataHandler.
	*
	* @return  the CommandInfo objects representing all the commands
	*
	* @see javax.activation.CommandMap#getAllCommands
	*/
	@:overload public function getAllCommands() : java.NativeArray<javax.activation.CommandInfo>;
	
	/**
	* Get the command <i>cmdName</i>. Use the search semantics as
	* defined by the CommandMap installed in this DataHandler. The
	* MIME type for the underlying data represented by this DataHandler
	* is used to call through to the <code>getCommand</code> method
	* of the CommandMap associated with this DataHandler.
	*
	* @param cmdName   the command name
	* @return  the CommandInfo corresponding to the command
	*
	* @see javax.activation.CommandMap#getCommand
	*/
	@:overload public function getCommand(cmdName : String) : javax.activation.CommandInfo;
	
	/**
	* Return the data in its preferred Object form. <p>
	*
	* If the DataHandler was instantiated with an object, return
	* the object. <p>
	*
	* If the DataHandler was instantiated with a DataSource,
	* this method uses a DataContentHandler to return the content
	* object for the data represented by this DataHandler. If no
	* <code>DataContentHandler</code> can be found for the
	* the type of this data, the DataHandler returns an
	* InputStream for the data.
	*
	* @return the content.
	* @exception IOException if an IOException occurs during
	*                              this operation.
	*/
	@:overload public function getContent() : Dynamic;
	
	/**
	* A convenience method that takes a CommandInfo object
	* and instantiates the corresponding command, usually
	* a JavaBean component.
	* <p>
	* This method calls the CommandInfo's <code>getCommandObject</code>
	* method with the <code>ClassLoader</code> used to load
	* the <code>javax.activation.DataHandler</code> class itself.
	*
	* @param cmdinfo   the CommandInfo corresponding to a command
	* @return  the instantiated command object
	*/
	@:overload public function getBean(cmdinfo : javax.activation.CommandInfo) : Dynamic;
	
	/**
	* Sets the DataContentHandlerFactory.  The DataContentHandlerFactory
	* is called first to find DataContentHandlers.
	* The DataContentHandlerFactory can only be set once.
	* <p>
	* If the DataContentHandlerFactory has already been set,
	* this method throws an Error.
	*
	* @param newFactory        the DataContentHandlerFactory
	* @exception Error if the factory has already been defined.
	*
	* @see javax.activation.DataContentHandlerFactory
	*/
	@:overload @:synchronized public static function setDataContentHandlerFactory(newFactory : javax.activation.DataContentHandlerFactory) : Void;
	
	
}
@:internal extern class DataHandlerDataSource implements javax.activation.DataSource
{
	/**
	* The constructor.
	*/
	@:overload public function new(dh : javax.activation.DataHandler) : Void;
	
	/**
	* Returns an <code>InputStream</code> representing this object.
	* @return  the <code>InputStream</code>
	*/
	@:overload public function getInputStream() : java.io.InputStream;
	
	/**
	* Returns the <code>OutputStream</code> for this object.
	* @return  the <code>OutputStream</code>
	*/
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Returns the MIME type of the data represented by this object.
	* @return  the MIME type
	*/
	@:overload public function getContentType() : String;
	
	/**
	* Returns the name of this object.
	* @return  the name of this object
	*/
	@:overload public function getName() : String;
	
	
}
@:internal extern class DataSourceDataContentHandler implements javax.activation.DataContentHandler
{
	/**
	* The constructor.
	*/
	@:overload public function new(dch : javax.activation.DataContentHandler, ds : javax.activation.DataSource) : Void;
	
	/**
	* Return the DataFlavors for this <code>DataContentHandler</code>.
	* @return  the DataFlavors
	*/
	@:overload public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Return the Transfer Data of type DataFlavor from InputStream.
	* @param df        the DataFlavor
	* @param ds        the DataSource
	* @return          the constructed Object
	*/
	@:overload public function getTransferData(df : java.awt.datatransfer.DataFlavor, ds : javax.activation.DataSource) : Dynamic;
	
	@:overload public function getContent(ds : javax.activation.DataSource) : Dynamic;
	
	/**
	* Write the object to the output stream.
	*/
	@:overload public function writeTo(obj : Dynamic, mimeType : String, os : java.io.OutputStream) : Void;
	
	
}
@:internal extern class ObjectDataContentHandler implements javax.activation.DataContentHandler
{
	/**
	* The constructor.
	*/
	@:overload public function new(dch : javax.activation.DataContentHandler, obj : Dynamic, mimeType : String) : Void;
	
	/**
	* Return the DataContentHandler for this object.
	* Used only by the DataHandler class.
	*/
	@:overload public function getDCH() : javax.activation.DataContentHandler;
	
	/**
	* Return the DataFlavors for this <code>DataContentHandler</code>.
	* @return  the DataFlavors
	*/
	@:overload @:synchronized public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Return the Transfer Data of type DataFlavor from InputStream.
	* @param df        the DataFlavor
	* @param ds        the DataSource
	* @return          the constructed Object
	*/
	@:overload public function getTransferData(df : java.awt.datatransfer.DataFlavor, ds : javax.activation.DataSource) : Dynamic;
	
	@:overload public function getContent(ds : javax.activation.DataSource) : Dynamic;
	
	/**
	* Write the object to the output stream.
	*/
	@:overload public function writeTo(obj : Dynamic, mimeType : String, os : java.io.OutputStream) : Void;
	
	
}
