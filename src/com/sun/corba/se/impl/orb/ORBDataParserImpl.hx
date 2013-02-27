package com.sun.corba.se.impl.orb;
/*
* Copyright (c) 2002, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ORBDataParserImpl extends com.sun.corba.se.spi.orb.ParserImplTableBase implements com.sun.corba.se.spi.orb.ORBData
{
	@:overload public function getORBInitialHost() : String;
	
	@:overload public function getORBInitialPort() : Int;
	
	@:overload public function getORBServerHost() : String;
	
	@:overload public function getListenOnAllInterfaces() : String;
	
	@:overload public function getORBServerPort() : Int;
	
	@:overload public function getLegacySocketFactory() : com.sun.corba.se.spi.legacy.connection.ORBSocketFactory;
	
	@:overload public function getSocketFactory() : com.sun.corba.se.spi.transport.ORBSocketFactory;
	
	@:overload public function getUserSpecifiedListenPorts() : java.NativeArray<com.sun.corba.se.impl.legacy.connection.USLPort>;
	
	@:overload public function getIORToSocketInfo() : com.sun.corba.se.spi.transport.IORToSocketInfo;
	
	@:overload public function getIIOPPrimaryToContactInfo() : com.sun.corba.se.spi.transport.IIOPPrimaryToContactInfo;
	
	@:overload public function getORBId() : String;
	
	@:overload public function getORBServerIdPropertySpecified() : Bool;
	
	@:overload public function isLocalOptimizationAllowed() : Bool;
	
	@:overload public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload public function getHighWaterMark() : Int;
	
	@:overload public function getLowWaterMark() : Int;
	
	@:overload public function getNumberToReclaim() : Int;
	
	@:overload public function getGIOPFragmentSize() : Int;
	
	@:overload public function getGIOPBufferSize() : Int;
	
	@:overload public function getGIOPBuffMgrStrategy(gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Int;
	
	/**
	* @return the GIOP Target Addressing preference of the ORB.
	* This ORB by default supports all addressing dispositions unless specified
	* otherwise via a java system property ORBConstants.GIOP_TARGET_ADDRESSING
	*/
	@:overload public function getGIOPTargetAddressPreference() : java.StdTypes.Int16;
	
	@:overload public function getGIOPAddressDisposition() : java.StdTypes.Int16;
	
	@:overload public function useByteOrderMarkers() : Bool;
	
	@:overload public function useByteOrderMarkersInEncapsulations() : Bool;
	
	@:overload public function alwaysSendCodeSetServiceContext() : Bool;
	
	@:overload public function getPersistentPortInitialized() : Bool;
	
	@:overload public function getPersistentServerPort() : Int;
	
	@:overload public function getPersistentServerIdInitialized() : Bool;
	
	/** Return the persistent-server-id of this server. This id is the same
	*  across multiple activations of this server. This is in contrast to
	*  com.sun.corba.se.impl.iiop.ORB.getTransientServerId() which
	*  returns a transient id that is guaranteed to be different
	*  across multiple activations of
	*  this server. The user/environment is required to supply the
	*  persistent-server-id every time this server is started, in
	*  the ORBServerId parameter, System properties, or other means.
	*  The user is also required to ensure that no two persistent servers
	*  on the same host have the same server-id.
	*/
	@:overload public function getPersistentServerId() : Int;
	
	@:overload public function getServerIsORBActivated() : Bool;
	
	@:overload public function getBadServerIdHandler() : Class<Dynamic>;
	
	/**
	* Get the prefered code sets for connections. Should the client send the code set service context on every
	* request?
	*/
	@:overload public function getCodeSetComponentInfo() : com.sun.corba.se.impl.encoding.CodeSetComponentInfo;
	
	@:overload public function getORBInitializers() : java.NativeArray<org.omg.PortableInterceptor.ORBInitializer>;
	
	@:overload public function getORBInitialReferences() : java.NativeArray<com.sun.corba.se.spi.orb.StringPair>;
	
	@:overload public function getORBDefaultInitialReference() : String;
	
	@:overload public function getORBDebugFlags() : java.NativeArray<String>;
	
	@:overload public function getAcceptors() : java.NativeArray<com.sun.corba.se.pept.transport.Acceptor>;
	
	@:overload public function getCorbaContactInfoListFactory() : com.sun.corba.se.spi.transport.CorbaContactInfoListFactory;
	
	@:overload public function acceptorSocketType() : String;
	
	@:overload public function acceptorSocketUseSelectThreadToWait() : Bool;
	
	@:overload public function acceptorSocketUseWorkerThreadForEvent() : Bool;
	
	@:overload public function connectionSocketType() : String;
	
	@:overload public function connectionSocketUseSelectThreadToWait() : Bool;
	
	@:overload public function connectionSocketUseWorkerThreadForEvent() : Bool;
	
	@:overload public function isJavaSerializationEnabled() : Bool;
	
	@:overload public function getTransportTCPReadTimeouts() : com.sun.corba.se.spi.transport.ReadTimeouts;
	
	@:overload public function disableDirectByteBufferUse() : Bool;
	
	@:overload public function useRepId() : Bool;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, coll : com.sun.corba.se.spi.orb.DataCollector) : Void;
	
	@:overload override public function complete() : Void;
	
	
}
