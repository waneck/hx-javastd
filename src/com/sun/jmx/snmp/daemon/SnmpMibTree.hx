package com.sun.jmx.snmp.daemon;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
//// java imports
////
//// jmx imports
////
//// SNMP Runtime imports
////
/**
* The class is used for building a tree representation of the different
* root oids of the supported MIBs. Each node is associated to a specific MIB.
*/
@:internal extern class SnmpMibTree
{
	@:overload public function new() : Void;
	
	@:overload public function setDefaultAgent(def : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent) : Void;
	
	@:overload public function getDefaultAgent() : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent;
	
	@:overload public function register(agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent) : Void;
	
	@:overload public function register(agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, oid : java.NativeArray<haxe.Int64>) : Void;
	
	@:overload public function getAgentMib(oid : SnmpOid) : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent;
	
	@:overload public function unregister(agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, oids : java.NativeArray<SnmpOid>) : Void;
	
	@:overload public function unregister(agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent) : Void;
	
	/*
	public void unregister(SnmpMibAgent agent) {
	long[] oid= agent.getRootOid();
	TreeNode node= root.retrieveMatchingBranch(oid, 0);
	if (node == null)
	return;
	node.removeAgent(agent);
	}
	*/
	@:overload public function printTree() : Void;
	
	
}
@:native('com$sun$jmx$snmp$daemon$SnmpMibTree$TreeNode') @:internal extern class SnmpMibTree_TreeNode
{
	@:overload public function printTree(ident : java.lang.String.String) : Void;
	
	
}
