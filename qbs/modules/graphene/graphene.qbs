import qbs
import qbs.File

Module {
    Depends { name: "cpp" }
    property string graphenePath: qbs.getEnv("GRAPHENE_PATH")
    property bool found: File.exists(graphenePath+"/lib/libgraphene_app.a")
    cpp.includePaths: graphenePath+"/include"
    cpp.libraryPaths: [graphenePath+"/lib", graphenePath+"/lib/cryptonomex"]
    cpp.staticLibraries: [
        "boost_system",
        "boost_filesystem",
        "boost_program_options",
        "boost_chrono",
        "boost_date_time",
        "boost_coroutine",
        "boost_context",
        "boost_thread",
        "ssl",
        "crypto",
        "graphene_app",
        "graphene_chain",
        "graphene_utilities",
        "graphene_net",
        "graphene_time",
        "graphene_egenesis_full",
        "graphene_db",
        "graphene_debug_witness",
        "graphene_market_history",
        "fc",
        "secp256k1",
        "z"
    ]
}
