class profile::agent_nodes {
  include docker; docker_network
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
}
