import pandas as pd

data = {
'machine_id': [0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2], 
'process_id': [0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1], 
'activity_type': ['start', 'end', 'start', 'end', 'start', 'end', 'start', 'end', 'start', 'end', 'start', 'end'], 
'timestamp': [0.712, 1.520, 3.140, 4.120, 0.550, 1.550, 0.430, 1.420, 4.100, 4.512, 2.500, 5.000] 
}

df = pd.DataFrame(data)

start_times = df[df['activity_type'] == 'start'].set_index(['machine_id', 'process_id'])
end_times = df[df['activity_type'] == 'end'].set_index(['machine_id', 'process_id'])
process_time = end_times['timestamp'] - start_times['timestamp']

process_time = process_time.reset_index()
process_time.columns = ['machine_id', 'process_id', 'processing_time']
ave_time = process_time.groupby('machine_id')['processing_time'].mean().reset_index()
ave_time['processing_time'] = ave_time['processing_time'].round(2)
print(ave_time)