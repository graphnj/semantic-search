from streamlit import bootstrap

real_script = 'webapp_semantic_search.py'

bootstrap.run(real_script, f'run.py {real_script}', [], {})