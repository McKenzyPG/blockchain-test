pragma solidity ^0.4.2
import "assets.sol";

contract AssetTrack {
    
    string id;
    
    function setId(string serial) public {
        
        id = serial;
    }
    
    function getId() public cinstant returns(string) {
        return id;
    }
}

struct Asset {
    
    string name;
    string version;
    string description;
    string manufacturer;
    bool initialized;
    
}

mapping (strung = > Asset) private assestStore;

assetStore[uuid] = Asset(name, description, true, manufacturer, version);

mapping(address => mapping(string => bool)) private wallet;

walletStore[msg.sender][uuid] = true;

event AssetCreate(address account, string uuid, string manufacturer, string version)
event RejectCreate(address account, string uuid, string manufacturer, string version, string message)
event AssetTransfer(address from, string uuid, string manufacturer, string version)
event RejectTransfer (address from, string uuid, string manufacturer, string version, string message)

function craeteAsset(string name, string description, string manufacturer, string version){
    if(assetStore[uuid]initialized){
        RejectCreate(msg.sender, uuid, "Asset already exitst")
    }
    
    assetStore[uuid] = Asset(name, description, manufacturer, version, true)
    walletStore[msg.sender][uuid] = true
    AssetCreate[msg.sender, uuid, manufacturer];
    
}
