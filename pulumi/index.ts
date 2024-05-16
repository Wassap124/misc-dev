import * as pulumi from "@pulumi/pulumi";

class MyNullResource extends pulumi.Resource {
    constructor(name: string) {
        super("custom:null:MyNullResource", name, true);
    }
}

// Create an instance of MyNullResource
const myNullResource = new MyNullResource("myNullResource");

// Output the ID of the null resource
export const nullResourceId = myNullResource.urn;
