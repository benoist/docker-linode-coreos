# Linode API for CoreOS deployment

This is a Docker image [million12/linode-coreos-api](https://registry.hub.docker.com/u/million12/linode-coreos-api/) for deployong CoreOS on Linode infrastructure. It's based on [million12/linodeapi](https://github.com/million12/linodeapi) Linode API.  

Entrypoint is set to `linode --help` so runnign the container will list all available options in API. 

Example output:  

```		
Linode Bash API CoreOS Deployment Help
  opnions:
  
  --help                    help
  --node_name               Node name (required)
  --node_plan               Node plan (required)
  --datacenter_id           Datacenter of your choice
  --token                   ETCD Token (required)
  
  CoreOS cloud_config:
  --config_github           GitHub cloud-config.yaml file link (requite github api key)
  --config_file             Local cloud-config.yaml file
  
 Get Details From Linode API: 
  --list_plans (-z)         List linode plans
  --list_datacenters (-x)   List linode datacenters

  For more informations on Linode/Github API keys please go to project page:
  https://github.com/million12/linodeapi

```  

## GitHub and Linode API Keys
You need evironmental variables for Linode API access and GitHub for accessing your files that are not accessible to the public. For both please see Linode/GitHub documentation.  
[Linode API Key documentation](https://www.linode.com/api)  
[GitHub API Key documentation](https://developer.github.com/v3/oauth_authorizations/)  

Variables:  
`GITHUB_KEY=your_key`  
`LINODE_KEY-your_key` 

## Usage
To run docker and list availabel options type:  
`docker run -e GITHUB_KEY=your_key -e LINODE_KEY=your_key million12/linode-coreos-api`

## Alias for easy deployments
Add alias into your `.bashrc`, `.bash_profile` or `.profile` file to be able to run it as one simple command. 

Alias:  
`alias linode='docker run --rm -t -e GITHUB_KEY=your_key -e LINODE_KEY=your_key million12/linode-coreos-api linode'`

---

**Sponsored by** [Typostrap.io - the new prototyping tool](http://typostrap.io/) for building highly-interactive prototypes of your website or web app. Built on top of TYPO3 Neos CMS and Zurb Foundation framework. 
